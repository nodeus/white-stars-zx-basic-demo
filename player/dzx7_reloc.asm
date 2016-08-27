; -----------------------------------------------------------------------------
; ZX7 decoder by Einar Saukas, Antonio Villena & Metalbrain
; "Relocatable" version by spke ( bytes only)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------

	MACRO	dzx7r_read_one_bit
        add     a, a                    ; check next bit
        jr	nz, 000f                ; no more bits left?
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
000:
        ENDM

dzx7_relocatable:
        ld      a, $80
dzx7r_copy_byte_loop:
        ldi                              ; copy literal byte
dzx7r_main_loop:
	dzx7r_read_one_bit
        jr      nc, dzx7r_copy_byte_loop ; next bit indicates either literal or sequence

; determine number of bits used for length (Elias gamma coding)
        push    de
        ld      bc, 0
        ld      d, b
dzx7r_len_size_loop:
        inc     d
	dzx7r_read_one_bit
        jr      nc, dzx7r_len_size_loop

; determine length
dzx7r_len_value_loop:
	jr	c, dzx7r_no_bit_needed
	dzx7r_read_one_bit
dzx7r_no_bit_needed:
        rl      c
        rl      b
        jr      c, dzx7r_exit           ; check end marker
        dec     d
        jr      nz, dzx7r_len_value_loop
        inc     bc                      ; adjust length

; determine offset
        ld      e, (hl)                 ; load offset flag (1 bit) + offset value (7 bits)
        inc     hl
        defb    $cb, $33                ; opcode for undocumented instruction "SLL E" aka "SLS E"
        jr      nc, dzx7r_offset_end    ; if offset flag is set, load 4 extra bits
        ld      d, $10                  ; bit marker to load 4 bits
dzx7r_rld_next_bit:
	dzx7r_read_one_bit
        rl      d                       ; insert next bit into D
        jr      nc, dzx7r_rld_next_bit  ; repeat 4 times, until bit marker is out
        inc     d                       ; add 128 to DE
        srl	d			; retrieve fourth bit from D
dzx7r_offset_end:
        rr      e                       ; insert fourth bit into E

; copy previous sequence
        ex      (sp), hl                ; store source, restore destination
        push    hl                      ; store destination
        sbc     hl, de                  ; HL = destination - offset - 1
        pop     de                      ; DE = destination
        ldir
dzx7r_exit:
        pop     hl                      ; restore source address (compressed data)
        jr      nc, dzx7r_main_loop
;        ret

; -----------------------------------------------------------------------------

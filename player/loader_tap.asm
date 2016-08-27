;
;  basic music loader ver.0.1		copyright (c) 2015 introspec
;

			DEVICE	ZXSPECTRUM48

;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;
;  PART 1: BASIC LOADER
;
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
;
;  control codes used by zx spectrum basic:
;
;  						6	PRINT comma	7	EDIT
;  8	LEFT		9	RIGHT		10	DOWN		11	UP
;  12	DELETE		13	ENTER		14	number
;  16	INK control	17	PAPER control	18	FLASH control	19	BRIGHT control
;  20	INVERSE control	21	OVER control	22	AT control	23	TAB control
;
		DEFINE	ccRET 13
		DEFINE	ccINK 16
		DEFINE	ccPAPER 17

;
;  			165	RND		166	INKEY$		167	PI		
;  168	FN		169	POINT		170	SCREEN$		171	ATTR
;  172	AT		173	TAB		174	VAL$		175	CODE
;  176	VAL		177	LEN		178	SIN		179	COS
;  180	TAN		181	ASN		182	ACS		183	ATN
;  184	LN		185	EXP		186	INT		187	SQR
;  188	SGN		189	ABS		190	PEEK		191	IN
;  192	USR		193	STR$		194	CHR$		195	NOT
;  196	BIN		197	OR		198	AND		199	<=
;  200	>=		201	<>		202	LINE		203	THEN
;  204	TO		205	STEP		206	DEF FN		207	CAT
;  208	FORMAT		209	MOVE		210	ERASE		211	OPEN #
;  212	CLOSE #		213	MERGE		214	VERIFY		215	BEEP
;  216	CIRCLE		217	INK		218	PAPER		219	FLASH
;  220	BRIGHT		221	INVERSE		222	OVER		223	OUT
;  224	LPRINT		225	LLIST		226	STOP		227	READ
;  228	DATA		229	RESTORE		230	NEW		231	BORDER
;  232	CONTINUE	233	DIM		234	REM		235	FOR
;  236	GO TO		237	GO SUB		238	INPUT		239	LOAD
;  240	LIST		241	LET		242	PAUSE		243	NEXT
;  244	POKE		245	PRINT		246	PLOT		247	RUN
;  248	SAVE		249	RANDOMIZE	250	IF		251	CLS
;  252	DRAW		253	CLEAR		254	RETURN		255	COPY 	
;

						DEFINE	zxRND 165 :		DEFINE	zxINKEYs 166 :		DEFINE	zxPI 167
		DEFINE	zxFN 168 :		DEFINE	zxPOINT 169 :		DEFINE	zxSCREENs 170 :		DEFINE	zxATTR 171
		DEFINE	zxAT 172 :		DEFINE	zxTAB 173 :		DEFINE	zxVALs 174 :		DEFINE	zxCODE 175
		DEFINE	zxVAL 176 :		DEFINE	zxLEN 177 :		DEFINE	zxSIN 178 :		DEFINE	zxCOS 179
		DEFINE	zxTAN 180 :		DEFINE	zxASN 181 :		DEFINE	zxACS 182 :		DEFINE	zxATN 183
		DEFINE	zxLN 184 :		DEFINE	zxEXP 185 :		DEFINE	zxINT 186 :		DEFINE	zxSQR 187
		DEFINE	zxSGN 188 :		DEFINE	zxABS 189 :		DEFINE	zxPEEK 190 :		DEFINE	zxIN 191
		DEFINE	zxUSR 192 :		DEFINE	zxSTRs 193 :		DEFINE	zxCHRs 194 :		DEFINE	zxNOT 195

			; 196-215

		DEFINE	zxCIRCLE 216 :		DEFINE	zxINK 217 :		DEFINE	zxPAPER 218 :		DEFINE	zxFLASH 219
		DEFINE	zxBRIGHT 220 :		DEFINE	zxINVERSE 221 :		DEFINE	zxOVER 222 :		DEFINE	zxOUT 223
		DEFINE	zxLPRINT 224 :		DEFINE	zxLLIST 225 :		DEFINE	zxSTOP 226 :		DEFINE	zxREAD 227
		DEFINE	zxDATA 228 :		DEFINE	zxRESTORE 229 :		DEFINE	zxNEW 230 :		DEFINE	zxBORDER 231
		DEFINE	zxCONTINUE 232 :	DEFINE	zxDIM 233 :		DEFINE	zxREM 234 :		DEFINE	zxFOR 235
		DEFINE	zxGOTO 236 :		DEFINE	zxGOSUB 237 :		DEFINE	zxINPUT 238 :		DEFINE	zxLOAD 239
		DEFINE	zxLIST 240 :		DEFINE	zxLET 241 :		DEFINE	zxPAUSE 242 :		DEFINE	zxNEXT 243
		DEFINE	zxPOKE 244 :		DEFINE	zxPRINT 245 :		DEFINE	zxPLOT 246 :		DEFINE	zxRUN 247
		DEFINE	zxSAVE 248 :		DEFINE	zxRANDOMIZE 249 :	DEFINE	zxIF 250 :		DEFINE	zxCLS 251
		DEFINE	zxDRAW 252 :		DEFINE	zxCLEAR 253 :		DEFINE	zxRETURN 254 :		DEFINE	zxCOPY 255

			MACRO	zxBasicLine x
			db	high x, low x
			ENDM

			MACRO	zxInteger x
			db	14, 0, 0
			dw	x
			db	0
			ENDM

			ORG	23755		; only correct for Spectrum without TR-DOS or some other extension that moves BASIC around
						; however, the loader is designed to be independent of this address

			INCLUDE	"player.lst"

BasicStart:		EQU	$

Line0:
.begin:			zxBasicLine 0
			dw	Line0_.end-Line0.begin-4		; length of the current line

			db	zxINK, zxNOT, zxPI, ':'
			;db	zxINK, zxVAL, '"7"', ':'
			db	zxPAPER, zxNOT, zxPI, ':'
			;db	zxPAPER, zxVAL, '"7"', ':'
			db	zxBORDER, zxNOT, zxPI, ':'
			;db	zxBORDER, zxVAL, '"7"', ':'

			db	zxCLEAR, '0'
			zxInteger PlayerBegin-1
			db	':'
			;db	zxPOKE, '0'
			;zxInteger 23739
			;db	',', zxCODE, '"o"', ':'			; POKE VAL "23739", VAL "111"

			db	zxRANDOMIZE, zxUSR, '(', zxVAL, '"256*', zxPEEK, '23636+', zxPEEK, '23635"+0'
			zxInteger Line0.asmcode-Line0.begin
			db	'):'

			db	zxLOAD, '"', '"'
			db	ccRET;':', zxREM, ccINK, 0, ccPAPER, 0

.asmcode:		; compute the data address
			di
			ld	bc, #7FFD
			ld	a, %00010000		; _7FFD_ROM48K+_7FFD_MAINSCR+0
			out	(c), a

			; decompress player
			ld	a, 201			; RET
			ld	(65535), a
			call	65535
.curaddr:		dec	sp
			dec	sp
			pop	hl
			ld	de, Line0_.data-.curaddr
			add	hl, de
			ld	de, PlayerBegin
			INCLUDE	"dzx7_reloc.asm"

			; initialise music
Line0_:			call	START

			; new interrupt mode
			ld	a, #FE
			ld	i, a
			im	2

			; reset channels to 48k mode (otherwise LPRINT tricks fail)
			ld	hl, #09F4
			ld	(23749), hl
			ld	hl, #15C4
			ld	(23751), hl

			; switch to 48k basic
			ld	sp, (#5C3D)		; ERR_SP
			ld	hl, #1303		; MAIN_4
			ex	(sp), hl
			res	4, (iy+1)
			ei
			jp	#1B76			; STMT_RET

.data:			INCBIN	"player.zx7"

			db	ccRET
.end:

LineCopyright:
.begin:			zxBasicLine 2015
			dw	LineCopyright.end-LineCopyright.begin-4		; length of the current line
			db	127, "spke"
			db	ccRET
.end:

BasicEnd:		EQU	$

			IF _ERRORS = 0
			SAVEBIN	"loader_tap.bin", BasicStart, BasicEnd-BasicStart
			ELSE
			SHELLEXEC "cmd /q /c del /q loader_tap.bin"
			ENDIF







; ---------------------------------------------------------------------------
; Main level load blocks
;
; ===FORMAT===
; level	patterns + (1st	PLC num	* 10^6)
; 16x16	mappings + (2nd	PLC num	* 10^6)
; 256x256 mappings
; blank, music (unused), pal index (unused), pal index
; ---------------------------------------------------------------------------
	dc.l Nem_GHZ|4<<24
	dc.l Blk16_GHZ|5<<24
	dc.l Blk256_GHZ
	dc.b 0,	$81, 4,	4
	dc.l Nem_LZ|6<<24
	dc.l Blk16_LZ|7<<24
	dc.l Blk256_LZ
	dc.b 0,	$82, 5,	5
	dc.l Nem_MZ|8<<24
	dc.l Blk16_MZ|9<<24
	dc.l Blk256_MZ
	dc.b 0,	$83, 6,	6
	dc.l Nem_SLZ|$A<<24
	dc.l Blk16_SLZ|$B<<24
	dc.l Blk256_SLZ
	dc.b 0,	$84, 7,	7
	dc.l Nem_SYZ|$C<<24
	dc.l Blk16_SYZ|$D<<24
	dc.l Blk256_SYZ
	dc.b 0,	$85, 8,	8
	dc.l Nem_SBZ|$E<<24
	dc.l Blk16_SBZ|$F<<24
	dc.l Blk256_SBZ
	dc.b 0,	$86, 9,	9
	dc.l Nem_GHZ	; main load block for ending
	dc.l Blk16_GHZ
	dc.l Blk256_GHZ
	dc.b 0,	$86, $13, $13
; there you go lol
	dc.l Nem_BHZ|$20<<24 ; MAKOTO ZONE
	dc.l Blk16_BHZ|$21<<24
	dc.l Blk256_BHZ
	dc.b 0,	$9E, $15, $15
	even
; ---------------------------------------------------------------------------
; Special stage	mappings and VRAM pointers
; ---------------------------------------------------------------------------
	dc.l Map_SB_ColoredWall			; 1  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 2  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 3  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 4  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 5  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 6  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 7  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 8  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 9  Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; A  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; B  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; C  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; D  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; E  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; F  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; 10  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; 11  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; 12  Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; 13  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 14  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 15  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 16  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 17  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 18  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 19  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 1A  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 1B  Wall Red
	dc.w $33B
	dc.l Map_SB_ColoredWall			; 1C  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 1D  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 1E  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 1F  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 20  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 21  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 22  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 23  Wall Green
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 24  Wall Green
	dc.w $433B
	dc.l Map_SB_Bumper			; 25  Bumper
	dc.w $2434
	dc.l Map_SB_Bumper+$1000000		; 26  ANIM Bumper 1
	dc.w $2434
	dc.l Map_SB_Goal			; 27  Goal
	dc.w $487
	dc.l Map_SB_Bumper			; 28  Extra Life
	dc.w ArtTile_Player_2
	dc.l Map_SB_Up				; 29  Up
	dc.w $4494
	dc.l Map_SB_Down			; 2A  Down
	dc.w $4494
	dc.l Map_SB_R_and_Peppermint		; 2B  Reverse
	dc.w $2478
	dc.l Map_SB_R_and_Peppermint		; 2C  Peppermint
	dc.w $445D
	dc.l Map_SB_Diamond			; 2D  Diamond Blue
	dc.w $64AF
	dc.l Map_SB_Diamond			; 2E  Diamond Green
	dc.w $44AF
	dc.l Map_SB_Diamond			; 2F  Diamond Yellow
	dc.w $24AF
	dc.l Map_SB_Diamond			; 30  Diamond Red
	dc.w $4AF
	dc.l Map_SB_Diamond			; 31  ANIM Diamond Blue
	dc.w $64AF
	dc.l Map_SB_Diamond			; 32  ANIM Diamond Green
	dc.w $44AF
	dc.l Map_SB_Diamond			; 33  ANIM Diamond Yellow
	dc.w $24AF
	dc.l Map_SB_Diamond			; 34  ANIM Diamond Red
	dc.w $4AF
	dc.l Map_SB_Bumper+$2000000		; 35  ANIM Bumper 2
	dc.w $4434
	dc.l Map_SB_Ring+$1000000		; 36  ANIM Ring Sparkle 1
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+$2000000		; 37  ANIM Ring Sparkle 2
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+$3000000		; 38  ANIM Ring Sparkle 3
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+$4000000		; 39  ANIM Ring Sparkle 4
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring			; 3A  Ring
	dc.w make_art_tile(ArtTile_Ring-4,1,0)
	dc.l Map_SB_ColoredWall			; 3B  Breakable Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 3C  Breakable Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; 3D  Breakable Wall Red
	dc.w $433B
	dc.l Map_SB_ColoredWall			; 3E  ANIM Breakable Wall Blue
	dc.w $633B
	dc.l Map_SB_ColoredWall			; 3F  ANIM Breakable Wall Yellow
	dc.w $233B
	dc.l Map_SB_ColoredWall			; 40  ANIM Breakable Wall Red
	dc.w $433B
	dc.l Map_SB_R_and_Peppermint		; 41  ANIM Reverse
	dc.w $4478
;	dc.l Map_SB_ColoredWall			; 1  Breakable Wall Blue
;	dc.w $633B
;	dc.l Map_SB_ColoredWall			; 2  Breakable Wall Yellow
;	dc.w $233B
;	dc.l Map_SB_ColoredWall			; 3  Breakable Wall Red
;	dc.w $433B
;	dc.l Map_SB_Goal			; 4  Goal
;	dc.w $487
;	dc.l Map_SB_Bumper			; 5  Bumper
;	dc.w $2434
;	dc.l Map_SB_R_and_Peppermint		; 6  Reverse
;	dc.w $2478
;	dc.l Map_SB_R_and_Peppermint		; 7  Peppermint
;	dc.w $445D
;	dc.l Map_SB_Ring			; 8  Ring
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Slot			; 9  Bonus Cage
;	dc.w $481
;	dc.l Map_SB_Bumper+$1000000		; A  ANIM Bumper 1
;	dc.w $2434
;	dc.l Map_SB_Bumper+$2000000		; B  ANIM Bumper 2
;	dc.w $4434
;	dc.l Map_SB_R_and_Peppermint		; C  ANIM Reverse
;	dc.w $4478
;	dc.l Map_SB_ColoredWall			; D  ANIM Breakable Wall Blue
;	dc.w $633B
;	dc.l Map_SB_ColoredWall			; E  ANIM Breakable Wall Yellow
;	dc.w $233B
;	dc.l Map_SB_ColoredWall			; F  ANIM Breakable Wall Red
;	dc.w $433B
;	dc.l Map_SB_Ring+$4000000		; 10  ANIM Ring Sparkle 1
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Ring+$5000000		; 11  ANIM Ring Sparkle 2
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Ring+$6000000		; 12  ANIM Ring Sparkle 3
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Ring+$7000000		; 13  ANIM Ring Sparkle 4
;	dc.w make_art_tile(ArtTile_Ring,1,0)
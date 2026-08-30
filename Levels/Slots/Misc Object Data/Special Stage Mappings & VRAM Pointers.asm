; ---------------------------------------------------------------------------
; Special stage	mappings and VRAM pointers
; ---------------------------------------------------------------------------
	dc.l Map_SB_ColoredWall+(0<<24)				; 01  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 02  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 03  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 04  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 05  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 06  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 07  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 08  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 09  Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 0A  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 0B  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 0C  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 0D  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 0E  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 0F  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 10  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 11  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 12  Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 13  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 14  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 15  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 16  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 17  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 18  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 19  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 1A  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 1B  Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,0,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 1C  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 1D  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 1E  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 1F  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 20  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 21  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 22  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 23  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 24  Wall Green
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_Bumper+(0<<24)				; 25  Bumper
	dc.w make_art_tile(ArtTile_SlotsBlocks+$F9,1,0)
	dc.l Map_SB_Bumper+(1<<24)				; 26  ANIM Bumper 1
	dc.w make_art_tile(ArtTile_SlotsBlocks+$F9,1,0)
	dc.l Map_SB_Goal+(0<<24)				; 27  Goal
	dc.w make_art_tile(ArtTile_SlotsBlocks+$14C,0,0)
	dc.l Map_SB_Bumper+(0<<24)				; 28  Extra Life
	dc.w make_art_tile(ArtTile_Player_2,0,0)
	dc.l Map_SB_Up+(0<<24)					; 29  Up
	dc.w make_art_tile(ArtTile_EncoreBonus,2,0)
	dc.l Map_SB_Down+(0<<24)				; 2A  Down
	dc.w make_art_tile(ArtTile_EncoreBonus,2,0)
	dc.l Map_SB_R_and_Peppermint+(0<<24)			; 2B  Reverse
	dc.w make_art_tile(ArtTile_SlotsBlocks+$13D,1,0)
	dc.l Map_SB_R_and_Peppermint+(0<<24)			; 2C  Peppermint
	dc.w make_art_tile(ArtTile_SlotsBlocks+$122,2,0)
	dc.l Map_SB_Diamond+(0<<24)				; 2D  Diamond Blue
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,3,0)
	dc.l Map_SB_Diamond+(0<<24)				; 2E  Diamond Green
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,2,0)
	dc.l Map_SB_Diamond+(0<<24)				; 2F  Diamond Yellow
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,1,0)
	dc.l Map_SB_Diamond+(0<<24)				; 30  Diamond Red
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,0,0)
	dc.l Map_SB_Diamond+(0<<24)				; 31  ANIM Diamond Blue
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,3,0)
	dc.l Map_SB_Diamond+(0<<24)				; 32  ANIM Diamond Green
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,2,0)
	dc.l Map_SB_Diamond+(0<<24)				; 33  ANIM Diamond Yellow
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,1,0)
	dc.l Map_SB_Diamond+(0<<24)				; 34  ANIM Diamond Red
	dc.w make_art_tile(ArtTile_EncoreBonus+$1B,0,0)
	dc.l Map_SB_Bumper+(2<<24)				; 35  ANIM Bumper 2
	dc.w make_art_tile(ArtTile_SlotsBlocks+$F9,2,0)
	dc.l Map_SB_Ring+(1<<24)				; 36  ANIM Ring Sparkle 1
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+(2<<24)				; 37  ANIM Ring Sparkle 2
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+(3<<24)				; 38  ANIM Ring Sparkle 3
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+(4<<24)				; 39  ANIM Ring Sparkle 4
	dc.w make_art_tile(ArtTile_Ring,1,0)
	dc.l Map_SB_Ring+(0<<24)				; 3A  Ring
	dc.w make_art_tile(ArtTile_Ring-4,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 3B  Breakable Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 3C  Breakable Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 3D  Breakable Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 3E  ANIM Breakable Wall Blue
	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 3F  ANIM Breakable Wall Yellow
	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
	dc.l Map_SB_ColoredWall+(0<<24)				; 40  ANIM Breakable Wall Red
	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
	dc.l Map_SB_R_and_Peppermint+(0<<24)			; 41  ANIM Reverse
	dc.w make_art_tile(ArtTile_SlotsBlocks+$13D,2,0)
;	dc.l Map_SB_ColoredWall+(0<<24)				; 01  Breakable Wall Blue
;	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
;	dc.l Map_SB_ColoredWall+(0<<24)				; 02  Breakable Wall Yellow
;	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
;	dc.l Map_SB_ColoredWall+(0<<24)				; 03  Breakable Wall Red
;	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
;	dc.l Map_SB_Goal+(0<<24)				; 04  Goal
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$14C,0,0)
;	dc.l Map_SB_Bumper+(0<<24)				; 05  Bumper
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$F9,1,0)
;	dc.l Map_SB_R_and_Peppermint+(0<<24)			; 06  Reverse
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$13D,1,0)
;	dc.l Map_SB_R_and_Peppermint+(0<<24)			; 07  Peppermint
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$122,2,0)
;	dc.l Map_SB_Ring+(0<<24)				; 08  Ring
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Slot+(0<<24)				; 09  Bonus Cage
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$146,0,0)
;	dc.l Map_SB_Bumper+(1<<24)				; 0A  ANIM Bumper 1
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$F9,1,0)
;	dc.l Map_SB_Bumper+(2<<24)				; 0B  ANIM Bumper 2
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$F9,2,0)
;	dc.l Map_SB_R_and_Peppermint+(0<<24)			; 0C  ANIM Reverse
;	dc.w make_art_tile(ArtTile_SlotsBlocks+$13D,2,0)
;	dc.l Map_SB_ColoredWall+(0<<24)				; 0D  ANIM Breakable Wall Blue
;	dc.w make_art_tile(ArtTile_SlotsBlocks,3,0)
;	dc.l Map_SB_ColoredWall+(0<<24)				; 0E  ANIM Breakable Wall Yellow
;	dc.w make_art_tile(ArtTile_SlotsBlocks,1,0)
;	dc.l Map_SB_ColoredWall+(0<<24)				; 0F  ANIM Breakable Wall Red
;	dc.w make_art_tile(ArtTile_SlotsBlocks,2,0)
;	dc.l Map_SB_Ring+(4<<24)				; 10  ANIM Ring Sparkle 1
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Ring+(5<<24)				; 11  ANIM Ring Sparkle 2
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Ring+(6<<24)				; 12  ANIM Ring Sparkle 3
;	dc.w make_art_tile(ArtTile_Ring,1,0)
;	dc.l Map_SB_Ring+(7<<24)				; 13  ANIM Ring Sparkle 4
;	dc.w make_art_tile(ArtTile_Ring,1,0)
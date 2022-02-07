		dc.w Map_PuzzlePieceMain-Map_PuzzlePiece
		dc.w Map_PuzzlePieceMain-Map_PuzzlePiece
		dc.w Map_PuzzlePieceMain-Map_PuzzlePiece
		dc.w Map_PuzzlePieceMain-Map_PuzzlePiece
		dc.w Map_PuzzlePieceSparkle1-Map_PuzzlePiece
		dc.w Map_PuzzlePieceSparkle2-Map_PuzzlePiece
		dc.w Map_PuzzlePieceSparkle3-Map_PuzzlePiece
		dc.w Map_PuzzlePieceSparkle4-Map_PuzzlePiece
		dc.w Map_PuzzlePieceBlank-Map_PuzzlePiece
Map_PuzzlePieceMain:
		dc.w 2
		dc.b  $FA,   5, $20, $D8, $FF, $F8
		dc.b   $A,   4,   0,   6, $FF, $F8
Map_PuzzlePieceSparkle1:
		dc.w 2
		dc.b  $FA,   5, $20, $E4, $FF, $F8
		dc.b   $A,   4,   0,   6, $FF, $F8
Map_PuzzlePieceSparkle2:
		dc.w 2
		dc.b  $FA,   5, $38, $E4, $FF, $F8
		dc.b   $A,   4,   0,   6, $FF, $F8
Map_PuzzlePieceSparkle3:
		dc.w 1
		dc.b  $FA,   5, $28, $E4, $FF, $F8
Map_PuzzlePieceSparkle4:
		dc.w 1
		dc.b  $FA,   5, $30, $E4, $FF, $F8
Map_PuzzlePieceBlank:
		dc.w 0

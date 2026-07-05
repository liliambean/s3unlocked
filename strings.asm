	section strings

	public Hiragana_KST, Hiragana_H, Katakana_KST, Katakana_H, Kana_Voiced
	public OptionText_EncoreFlags
	public OptionText_On,               OptionText_Off
	public OptionText_EncoreMode,       HelpText_EncoreMode
	public OptionText_EncorePalette,    HelpText_EncorePalette
	public OptionText_EncoreMusic,      HelpText_EncoreMusic
	public OptionText_SonicDropDash,    HelpText_SonicDropDash
	public OptionText_TailsRingBarrier, HelpText_TailsRingBarrier
	public OptionText_KnuxClimbDash,    HelpText_KnuxClimbDash
	public OptionText_AmyDoubleJump,    HelpText_AmyDoubleJump
	public OptionText_MightyWallJump,   HelpText_MightyWallJump
	public OptionText_RayWallJump,      HelpText_RayWallJump
	public OptionText_SonicPeelOut,     HelpText_SonicPeelOut

text macro numlines
	dc.w numlines - 1
	endm

str macro {INTLABEL}
__LABEL__ label *
	dc.b __LABEL___End - __LABEL__ - 2, ALLARGS
__LABEL___End:
	endm

	enum dot=$31
	nextenum  a,  i,  u,  e,  o, ka, ki, ku, ke, ko, sa, shi, su, se, so, ta, chi, tsu, te, to
	nextenum na, ni, nu, ne, no, ha, hi, fu, he, ho,  ma, mi, mu, me, mo, ya, xyu, yu, xyo, yo
	nextenum ra, ri, ru, re, ro, wa, xya, n, xtu, wo, xa, xi, xu, xe, xo, comma
	nextenum  A,  I,  U,  E,  O, KA, KI, KU, KE, KO, SA, SHI, SU, SE, SO, TA, CHI, TSU, TE, TO
	nextenum NA, NI, NU, NE, NO, HA, HI, FU, HE, HO,  MA, MI, MU, ME, MO, YA, xYU, YU, xYO, YO
	nextenum RA, RI, RU, RE, RO, WA, xYA, N, xTU, WO, xA, xI, xU, xE, xO, stop
	nextenum rule, dash, KYO, UE, SHITA, NAGA, OSU, NAGE
	nextenum ga, gi, gu, ge, go, za, ji, zu, ze, zo, da, zhi, dzu, de, do,  ba, bi, bu, be, bo
	nextenum GA, GI, GU, GE, GO, ZA, JI, ZU, ZE, ZO, DA, ZHI, DZU, DE, DO,  BA, BI, BU, BE, BO
	nextenum pa, pi, pu, pe, po, PA, PI, PU, PE, PO
	nextenum VU, DAI, IMA, HOU, KOU, CHUU, KUU, KII, AWA, MAE

Hiragana_KST = ka
Hiragana_H   = ha
Katakana_KST = KA
Katakana_H   = HA
Kana_Voiced  = ga

	save
	charset '0', '^', 1
	charset ',',  $C
	charset '.',  $E
	charset '!', $11
	charset '"', $2D
	charset '&', '(', $2F
	charset '-', $A3
	charset ' ',   0

OptionText_EncoreFlags: text 3
	dc.w OptionText_EncoreMode.EN-OptionText_EncoreFlags,    OptionText_EncoreMode.JP-OptionText_EncoreFlags
	dc.w OptionText_EncorePalette.EN-OptionText_EncoreFlags, OptionText_EncorePalette.JP-OptionText_EncoreFlags
	dc.w OptionText_EncoreMusic.EN-OptionText_EncoreFlags,   OptionText_EncoreMusic.JP-OptionText_EncoreFlags

OptionText_On: text 1
	dc.w .EN-OptionText_On, .EN-OptionText_On
.EN:	str " <ON>"
	even

OptionText_Off: text 1
	dc.w .EN-OptionText_Off, .EN-OptionText_Off
.EN:	str "<OFF>"
	even
	
OptionText_EncoreMode: text 1
	dc.w .EN-OptionText_EncoreMode, .JP-OptionText_EncoreMode
.EN:	str "ENCORE MODE"
.JP:	str A, N, KO, dash, RU, MO, dash, DO
	even

OptionText_EncorePalette: text 1
	dc.w .EN-OptionText_EncorePalette, .JP-OptionText_EncorePalette
.EN:	str "ENCORE MODE PALETTE"
.JP:	str A, N, KO, dash, RU, MO, dash, DO, "COLOR"
	even

OptionText_EncoreMusic: text 1
	dc.w .EN-OptionText_EncoreMusic, .JP-OptionText_EncoreMusic
.EN:	str "ENCORE MODE MUSIC"
.JP:	str A, N, KO, dash, RU, MO, dash, DO, "BGM"
	even

OptionText_SonicDropDash: text 1
	dc.w .EN-OptionText_SonicDropDash, .JP-OptionText_SonicDropDash
.EN:	str "SONIC: DROP DASH"
.JP:	str SO, NI, xTU, KU, " [", DO, RO, xTU, PU, DA, xTU, SHI, xYU, "]"
	even

OptionText_TailsRingBarrier: text 1
	dc.w .EN-OptionText_TailsRingBarrier, .JP-OptionText_TailsRingBarrier
.EN:	str "TAILS: RING BARRIER"
.JP:	str MA, I, RU, SU, " [", RI, N, GU, BA, RI, A, "]"
	even

OptionText_KnuxClimbDash: text 1
	dc.w .EN-OptionText_KnuxClimbDash, .JP-OptionText_KnuxClimbDash
.EN:	str "KNUCKLES: CLIMB DASH"
.JP:	str NA, xTU, KU, RU, ZU, "[", KA, BE, no, bo, ri, DA, xTU, SHI, xYU, "]"
	even

OptionText_AmyDoubleJump: text 1
	dc.w .EN-OptionText_AmyDoubleJump, .JP-OptionText_AmyDoubleJump
.EN:	str "AMY: DOUBLE JUMP"
.JP:	str E, MI, "-  [2", da, n, JI, xYA, N, PU, "]"
	even

OptionText_MightyWallJump: text 1
	dc.w .EN-OptionText_MightyWallJump, .JP-OptionText_MightyWallJump
.EN:	str "MIGHTY: TRIANGLE JUMP"
.JP:	str MA, I, TE, xI, " [", sa, n, ka, ku, to, bi, "]"
	even

OptionText_RayWallJump: text 1
	dc.w .EN-OptionText_RayWallJump, .JP-OptionText_RayWallJump
.EN:	str "RAY: TRIANGLE JUMP"
.JP:	str RE, I, "   [", sa, n, ka, ku, to, bi, "]"
	even

OptionText_SonicPeelOut: text 1
	dc.w .EN-OptionText_SonicPeelOut, .JP-OptionText_SonicPeelOut
.EN:	str "SONIC: SUPER PEEL OUT"
.JP:	str SO, NI, xTU, KU, " [", SU, TO, RA, I, KU, DA, xTU, SHI, xYU, "]"
	even

HelpText_EncoreMode: text 8
	dc.w .EN1-HelpText_EncoreMode, .EN1-HelpText_EncoreMode
	dc.w .EN2-HelpText_EncoreMode, .EN2-HelpText_EncoreMode
	dc.w .EN3-HelpText_EncoreMode, .EN3-HelpText_EncoreMode
	dc.w .EN4-HelpText_EncoreMode, .EN4-HelpText_EncoreMode
	dc.w .EN5-HelpText_EncoreMode, .EN5-HelpText_EncoreMode
	dc.w .EN6-HelpText_EncoreMode, .EN6-HelpText_EncoreMode
	dc.w .EN7-HelpText_EncoreMode, .EN7-HelpText_EncoreMode
	dc.w .EN8-HelpText_EncoreMode, .EN8-HelpText_EncoreMode
.EN1:	str "A REMIXED PLAY MODE INTRODUCED"
.EN2:	str "IN SONIC MANIA PLUS."
.EN3:	str "TAKE CONTROL OF TWO CHARACTERS"
.EN4:	str "AND PRESS THE A BUTTON TO SWAP"
.EN5:	str "BETWEEN THEM."
.EN6:	str "ADD CHARACTERS TO YOUR TEAM BY"
.EN7:	str "FINDING SPECIAL ITEM BOXES AND"
.EN8:	str "CLEARING BONUS STAGES!"
	even

HelpText_EncorePalette: text 8
	dc.w .EN1-HelpText_EncorePalette, .EN1-HelpText_EncorePalette
	dc.w .EN2-HelpText_EncorePalette, .EN2-HelpText_EncorePalette
	dc.w .EN3-HelpText_EncorePalette, .EN3-HelpText_EncorePalette
	dc.w .EN4-HelpText_EncorePalette, .EN4-HelpText_EncorePalette
	dc.w .EN5-HelpText_EncorePalette, .EN5-HelpText_EncorePalette
	dc.w .EN6-HelpText_EncorePalette, .EN6-HelpText_EncorePalette
	dc.w .EN7-HelpText_EncorePalette, .EN7-HelpText_EncorePalette
	dc.w .EN8-HelpText_EncorePalette, .EN8-HelpText_EncorePalette
.EN1:	str "WHEN THIS OPTION IS ENABLED,"
.EN2:	str "MOST STAGES WILL USE A REMIXED"
.EN3:	str "COLOR PALETTE, SIMILAR TO THE"
.EN4:	str "ENCORE MODE INCLUDED IN SONIC"
.EN5:	str "MANIA PLUS."
.EN6:	str "YOUR CHOICE FOR THIS OPTION IS"
.EN7:	str "TRACKED SEPARATELY FOR REGULAR"
.EN8:	str "PLAY AND ENCORE MODE."
	even

HelpText_EncoreMusic: text 8
	dc.w .EN1-HelpText_EncoreMusic, .EN1-HelpText_EncoreMusic
	dc.w .EN2-HelpText_EncoreMusic, .EN2-HelpText_EncoreMusic
	dc.w .EN3-HelpText_EncoreMusic, .EN3-HelpText_EncoreMusic
	dc.w .EN4-HelpText_EncoreMusic, .EN4-HelpText_EncoreMusic
	dc.w .EN5-HelpText_EncoreMusic, .EN5-HelpText_EncoreMusic
	dc.w .EN6-HelpText_EncoreMusic, .EN6-HelpText_EncoreMusic
	dc.w .EN7-HelpText_EncoreMusic, .EN7-HelpText_EncoreMusic
	dc.w .EN8-HelpText_EncoreMusic, .EN8-HelpText_EncoreMusic
.EN1:	str "WHEN THIS OPTION IS ENABLED,"
.EN2:	str "SEVERAL CUES FROM THE ORIGINAL"
.EN3:	str "MASTER OF SONIC 3 ARE REPLACED"
.EN4:	str "WITH THEIR EQUIVALENTS FROM"
.EN5:	str "SONIC & KNUCKLES COLLECTION."
.EN6:	str "YOUR CHOICE FOR THIS OPTION IS"
.EN7:	str "TRACKED SEPARATELY FOR REGULAR"
.EN8:	str "PLAY AND ENCORE MODE."
	even

HelpText_SonicDropDash: text 8
	dc.w .EN1-HelpText_SonicDropDash, .EN1-HelpText_SonicDropDash
	dc.w .EN2-HelpText_SonicDropDash, .EN2-HelpText_SonicDropDash
	dc.w .EN3-HelpText_SonicDropDash, .EN3-HelpText_SonicDropDash
	dc.w .EN4-HelpText_SonicDropDash, .EN4-HelpText_SonicDropDash
	dc.w .EN5-HelpText_SonicDropDash, .EN5-HelpText_SonicDropDash
	dc.w .EN6-HelpText_SonicDropDash, .EN6-HelpText_SonicDropDash
	dc.w .EN7-HelpText_SonicDropDash, .EN7-HelpText_SonicDropDash
	dc.w .EN8-HelpText_SonicDropDash, .EN8-HelpText_SonicDropDash
.EN1:	str "SONIC'S ABILITY FROM SONIC"
.EN2:	str "MANIA UNLOCKED!"
.EN3:	str "WHILE JUMPING, PRESS AND HOLD"
.EN4:	str "THE JUMP BUTTON TO CHARGE UP,"
.EN5:	str "THEN LAND TO DASH FORWARD."
.EN6:	str "RELEASE THE BUTTON TO CANCEL."
.EN7:	str "GOING DOWNHILL MAXIMIZES"
.EN8:	str "YOUR SPEED, UPHILL DAMPENS IT."
	even

HelpText_TailsRingBarrier: text 8
	dc.w .EN1-HelpText_TailsRingBarrier, .EN1-HelpText_TailsRingBarrier
	dc.w .EN2-HelpText_TailsRingBarrier, .EN2-HelpText_TailsRingBarrier
	dc.w .EN3-HelpText_TailsRingBarrier, .EN3-HelpText_TailsRingBarrier
	dc.w .EN4-HelpText_TailsRingBarrier, .EN4-HelpText_TailsRingBarrier
	dc.w .EN5-HelpText_TailsRingBarrier, .EN5-HelpText_TailsRingBarrier
	dc.w .EN6-HelpText_TailsRingBarrier, .EN6-HelpText_TailsRingBarrier
	dc.w .EN7-HelpText_TailsRingBarrier, .EN7-HelpText_TailsRingBarrier
	dc.w .EN8-HelpText_TailsRingBarrier, .EN8-HelpText_TailsRingBarrier
.EN1:	str "TAILS' ABILITY FROM TAILS' SKY"
.EN2:	str "PATROL UNLOCKED!"
.EN3:	str "WHILE FLYING, PRESS AND HOLD"
.EN4:	str "THE JUMP BUTTON TO SPIN A RING"
.EN5:	str "AROUND LIKE A BARRIER."
.EN6:	str "RELEASE THE BUTTON TO TOSS THE"
.EN7:	str "RING AND ATTACK ENEMIES."
.EN8:	str "AIM IT BY PRESSING UP OR DOWN."
	even

HelpText_KnuxClimbDash: text 8
	dc.w .EN1-HelpText_KnuxClimbDash, .EN1-HelpText_KnuxClimbDash
	dc.w .EN2-HelpText_KnuxClimbDash, .EN2-HelpText_KnuxClimbDash
	dc.w .EN3-HelpText_KnuxClimbDash, .EN3-HelpText_KnuxClimbDash
	dc.w .EN4-HelpText_KnuxClimbDash, .EN4-HelpText_KnuxClimbDash
	dc.w .EN5-HelpText_KnuxClimbDash, .EN5-HelpText_KnuxClimbDash
	dc.w .EN6-HelpText_KnuxClimbDash, .EN6-HelpText_KnuxClimbDash
	dc.w .EN7-HelpText_KnuxClimbDash, .EN7-HelpText_KnuxClimbDash
	dc.w .EN8-HelpText_KnuxClimbDash, .EN8-HelpText_KnuxClimbDash
.EN1:	str "KNUCKLES' ABILITY FROM SONIC"
.EN2:	str "ADVANCE 3 UNLOCKED!"
.EN3:	str "WHILE CLIMBING, PRESS AND HOLD"
.EN4:	str "DOWN ON THE DIRECTIONAL PAD,"
.EN5:	str "THEN PRESS THE JUMP BUTTON TO"
.EN6:	str "BEGIN CHARGING A SPIN DASH."
.EN7:	str "RELEASE THE DIRECTIONAL PAD TO"
.EN8:	str "DASH UP THE WALL."
	even

HelpText_AmyDoubleJump: text 8
	dc.w .EN1-HelpText_AmyDoubleJump, .EN1-HelpText_AmyDoubleJump
	dc.w .EN2-HelpText_AmyDoubleJump, .EN2-HelpText_AmyDoubleJump
	dc.w .EN3-HelpText_AmyDoubleJump, .EN3-HelpText_AmyDoubleJump
	dc.w .EN4-HelpText_AmyDoubleJump, .EN4-HelpText_AmyDoubleJump
	dc.w .EN5-HelpText_AmyDoubleJump, .EN5-HelpText_AmyDoubleJump
	dc.w .EN6-HelpText_AmyDoubleJump, .EN6-HelpText_AmyDoubleJump
	dc.w .EN7-HelpText_AmyDoubleJump, .EN7-HelpText_AmyDoubleJump
	dc.w .EN8-HelpText_AmyDoubleJump, .EN8-HelpText_AmyDoubleJump
.EN1:	str "AMY'S ABILITY FROM SONIC"
.EN2:	str "SUPERSTARS UNLOCKED!"
.EN3:	str "WHEN THIS OPTION IS ENABLED,"
.EN4:	str "AMY WILL AUTOMATICALLY PERFORM"
.EN5:	str "A HAMMER ATTACK UPON JUMPING."
.EN6:	str "PRESS THE JUMP BUTTON AGAIN TO"
.EN7:	str "PERFORM A DOUBLE JUMP AND GAIN"
.EN8:	str "ADDITIONAL HEIGHT."
	even

HelpText_MightyWallJump: text 8
	dc.w .EN1-HelpText_MightyWallJump, .EN1-HelpText_MightyWallJump
	dc.w .EN2-HelpText_MightyWallJump, .EN2-HelpText_MightyWallJump
	dc.w .EN3-HelpText_MightyWallJump, .EN3-HelpText_MightyWallJump
	dc.w .EN4-HelpText_MightyWallJump, .EN4-HelpText_MightyWallJump
	dc.w .EN5-HelpText_MightyWallJump, .EN5-HelpText_MightyWallJump
	dc.w .EN6-HelpText_MightyWallJump, .EN6-HelpText_MightyWallJump
	dc.w .EN7-HelpText_MightyWallJump, .EN7-HelpText_MightyWallJump
	dc.w .EN8-HelpText_MightyWallJump, .EN8-HelpText_MightyWallJump
.EN1:	str "MIGHTY'S ABILITY FROM CHAOTIX"
.EN2:	str "UNLOCKED!"
.EN3:	str "WHILE JUMPING, PRESS THE JUMP"
.EN4:	str "BUTTON AGAIN WHILE NEXT TO A"
.EN5:	str "WALL TO ATTACH YOURSELF TO IT."
.EN6:	str "AIM USING THE DIRECTIONAL PAD,"
.EN7:	str "THEN PRESS THE JUMP BUTTON"
.EN8:	str "TO LEAP OFF IN THAT DIRECTION."
	even

HelpText_RayWallJump: text 8
	dc.w .EN1-HelpText_RayWallJump, .EN1-HelpText_RayWallJump
	dc.w .EN2-HelpText_RayWallJump, .EN2-HelpText_RayWallJump
	dc.w .EN3-HelpText_RayWallJump, .EN3-HelpText_RayWallJump
	dc.w .EN4-HelpText_RayWallJump, .EN4-HelpText_RayWallJump
	dc.w .EN5-HelpText_RayWallJump, .EN5-HelpText_RayWallJump
	dc.w .EN6-HelpText_RayWallJump, .EN6-HelpText_RayWallJump
	dc.w .EN7-HelpText_RayWallJump, .EN7-HelpText_RayWallJump
	dc.w .EN8-HelpText_RayWallJump, .EN8-HelpText_RayWallJump
.EN1:	str "RAY'S HIDDEN ABILITY UNLOCKED?"
.EN2:	str "TAKING A PAGE FROM HIS FRIEND"
.EN3:	str "MIGHTY, RAY CAN ATTACH HIMSELF"
.EN4:	str "TO WALLS BY PRESSING THE JUMP"
.EN5:	str "BUTTON WHILE NEXT TO ONE."
.EN6:	str "RAY WILL ALSO GRAB ONTO A WALL"
.EN7:	str "AUTOMATICALLY IF HE BUMPS INTO"
.EN8:	str "IT WHILE FLYING."
	even

HelpText_SonicPeelOut: text 8
	dc.w .EN1-HelpText_SonicPeelOut, .EN1-HelpText_SonicPeelOut
	dc.w .EN2-HelpText_SonicPeelOut, .EN2-HelpText_SonicPeelOut
	dc.w .EN3-HelpText_SonicPeelOut, .EN3-HelpText_SonicPeelOut
	dc.w .EN4-HelpText_SonicPeelOut, .EN4-HelpText_SonicPeelOut
	dc.w .EN5-HelpText_SonicPeelOut, .EN5-HelpText_SonicPeelOut
	dc.w .EN6-HelpText_SonicPeelOut, .EN6-HelpText_SonicPeelOut
	dc.w .EN7-HelpText_SonicPeelOut, .EN7-HelpText_SonicPeelOut
	dc.w .EN8-HelpText_SonicPeelOut, .EN8-HelpText_SonicPeelOut
.EN1:	str "SONIC'S ABILITY FROM SONIC CD"
.EN2:	str "UNLOCKED!"
.EN3:	str "WHILE STANDING, PRESS AND HOLD"
.EN4:	str "UP ON THE DIRECTIONAL PAD,"
.EN5:	str "THEN PRESS THE JUMP BUTTON TO"
.EN6:	str "BEGIN CHARGING UP SPEED."
.EN7:	str "RELEASE THE DIRECTIONAL PAD TO"
.EN8:	str "IMMEDIATELY DASH FORWARD."
	even

	restore
	endsection strings

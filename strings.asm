	section strings

	public Hiragana_KST, Hiragana_H, Katakana_KST, Katakana_H, Kana_Voiced
	public OptionText_EraseDataScreen,  OptionText_EncoreFlags
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
	public UnlockText_MetalSonic,       MuseumText

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

OptionText_EraseDataScreen: text 6
	dc.w .EN1-OptionText_EraseDataScreen, .JP1-OptionText_EraseDataScreen
	dc.w .EN2-OptionText_EraseDataScreen, .JP2-OptionText_EraseDataScreen
	dc.w .EN3-OptionText_EraseDataScreen, .JP3-OptionText_EraseDataScreen
	dc.w .EN4-OptionText_EraseDataScreen, .JP4-OptionText_EraseDataScreen
	dc.w .EN5-OptionText_EraseDataScreen, .JP5-OptionText_EraseDataScreen
	dc.w .EN6-OptionText_EraseDataScreen, .JP6-OptionText_EraseDataScreen
.EN1:	str "ERASE 1 PLAYER DATA"
.EN2:	str "ERASE ENCORE MODE DATA"
.EN3:	str "ERASE COMPETITION RECORDS"
.EN4:	str "ERASE COLLECTED PHOTO PIECES"
.EN5:	str "ERASE BLUE SPHERE PROGRESS"
.EN6:	str "ERASE UNLOCKED REWARDS"
.JP1:	str "1 PLAYER ", SE, dash, BU, DE, dash, TA, wo, 0, ke, shi, te
.JP2:	str A, N, KO, dash, RU, MO, dash, DO, 0, SE, dash, BU, DE, dash, TA, wo, 0, ke, shi, te
.JP3:	str KO, N, PE, TE, xI, SHI, xYO, N, " BEST TIME", wo, 0, ke, shi, te
.JP4:	str FU, xO, TO, PI, dash, SU, 0, SE, dash, BU, DE, dash, TA, wo, 0, ke, shi, te
.JP5:	str BU, RU, dash, SU, FU, xI, A, IMA, no, " LEVEL", wo, 0, ke, shi, te
.JP6:	str A, N, RO, xTU, KU, sa, re, ta, 0, 0, O, PU, SHI, xYO, N, wo, 0, ke, shi, te
	even

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
	dc.w .EN1-HelpText_SonicDropDash, .JP1-HelpText_SonicDropDash
	dc.w .EN2-HelpText_SonicDropDash, .JP2-HelpText_SonicDropDash
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
.JP1:	str "[", SO, NI, xTU, KU, MA, NI, A, "]", ka, ra, no
.JP2:	str SO, NI, xTU, KU, no, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "!"
	even

HelpText_TailsRingBarrier: text 8
	dc.w .EN1-HelpText_TailsRingBarrier, .JP1-HelpText_TailsRingBarrier
	dc.w .EN2-HelpText_TailsRingBarrier, .JP2-HelpText_TailsRingBarrier
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
.JP1:	str "[", TE, I, RU, SU, no, SU, KA, I, PA, TO, RO, dash, RU, "]", ka, ra, no
.JP2:	str MA, I, RU, SU, no, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "!"
	even

HelpText_KnuxClimbDash: text 8
	dc.w .EN1-HelpText_KnuxClimbDash, .JP1-HelpText_KnuxClimbDash
	dc.w .EN2-HelpText_KnuxClimbDash, .JP2-HelpText_KnuxClimbDash
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
.JP1:	str "[", SO, NI, xTU, KU, A, DO, BA, N, SU, "3]", ka, ra, no
.JP2:	str NA, xTU, KU, RU, ZU, no, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "!"
	even

HelpText_AmyDoubleJump: text 8
	dc.w .EN1-HelpText_AmyDoubleJump, .JP1-HelpText_AmyDoubleJump
	dc.w .EN2-HelpText_AmyDoubleJump, .JP2-HelpText_AmyDoubleJump
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
.JP1:	str "[", SO, NI, xTU, KU, dot, SU, dash, PA, dash, SU, TA, dash, ZU, "]", ka, ra, no
.JP2:	str E, MI, dash, no, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "!"
	even

HelpText_MightyWallJump: text 8
	dc.w .EN1-HelpText_MightyWallJump, .JP1-HelpText_MightyWallJump
	dc.w .EN2-HelpText_MightyWallJump, .JP2-HelpText_MightyWallJump
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
.JP1:	str "[", KA, O, TE, xI, KU, SU, "]", ka, ra, no
.JP2:	str MA, I, TE, xI, no, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "!"
	even

HelpText_RayWallJump: text 8
	dc.w .EN1-HelpText_RayWallJump, .JP1-HelpText_RayWallJump
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
.JP1:	str RE, I, no, ka, ku, shi, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "?"
	even

HelpText_SonicPeelOut: text 8
	dc.w .EN1-HelpText_SonicPeelOut, .JP1-HelpText_SonicPeelOut
	dc.w .EN2-HelpText_SonicPeelOut, .JP2-HelpText_SonicPeelOut
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
.JP1:	str "[", SO, NI, xTU, KU, "CD]", ka, ra, no
.JP2:	str SO, NI, xTU, KU, no, A, KU, SHI, xYO, N, ga, 0, A, N, RO, xTU, KU, sa, re, ta, "!"
	even

UnlockText_MetalSonic: text 3+2
	dc.w 0, 0
	dc.w 0, 0
	dc.w 0, 0
	dc.w .EN1-UnlockText_MetalSonic, .EN1-UnlockText_MetalSonic
	dc.w .EN2-UnlockText_MetalSonic, .EN2-UnlockText_MetalSonic
.EN1:	str "YOU CAN NOW PLAY"
.EN2:	str "AS METAL SONIC."
	even

MuseumText:
	dc.w .EN001-MuseumText, .JP001-MuseumText
	dc.w .EN002-MuseumText, .JP002-MuseumText
	dc.w .EN003-MuseumText, .JP003-MuseumText
	dc.w .EN004-MuseumText, .JP004-MuseumText
	dc.w .EN005-MuseumText, .JP005-MuseumText
	dc.w .EN006-MuseumText, .JP006-MuseumText
	dc.w .EN007-MuseumText, .JP007-MuseumText
	dc.w .EN008-MuseumText, .JP008-MuseumText
	dc.w .EN009-MuseumText, .JP009-MuseumText
	dc.w .EN010-MuseumText, .JP010-MuseumText
	dc.w .EN011-MuseumText, .JP011-MuseumText
	dc.w .EN012-MuseumText, .JP012-MuseumText
	dc.w .EN013-MuseumText, .JP013-MuseumText
	dc.w .EN014-MuseumText, .JP014-MuseumText
	dc.w .EN015-MuseumText, .JP015-MuseumText
	dc.w .EN016-MuseumText, .JP016-MuseumText
	dc.w .EN017-MuseumText, .JP017-MuseumText
	dc.w .EN018-MuseumText, .JP018-MuseumText
	dc.w .EN019-MuseumText, .JP019-MuseumText
	dc.w .EN020-MuseumText, .JP020-MuseumText
	dc.w .EN021-MuseumText, .JP021-MuseumText
	dc.w .EN022-MuseumText, .JP022-MuseumText
	dc.w .EN023-MuseumText, .JP023-MuseumText
	dc.w .EN024-MuseumText, .JP024-MuseumText
	dc.w .EN025-MuseumText, .JP025-MuseumText
	dc.w .EN026-MuseumText, .JP026-MuseumText
	dc.w .EN027-MuseumText, .JP027-MuseumText
	dc.w .EN028-MuseumText, .JP028-MuseumText
	dc.w .EN029-MuseumText, .JP029-MuseumText
	dc.w .EN030-MuseumText, .JP030-MuseumText
	dc.w .EN031-MuseumText, .JP031-MuseumText
	dc.w .EN032-MuseumText, .JP032-MuseumText
	dc.w .EN033-MuseumText, .JP033-MuseumText
	dc.w .EN034-MuseumText, .JP034-MuseumText
	dc.w .EN035-MuseumText, .JP035-MuseumText
	dc.w .EN036-MuseumText, .JP036-MuseumText
	dc.w .EN037-MuseumText, .JP037-MuseumText
	dc.w .EN038-MuseumText, .JP038-MuseumText
	dc.w .EN039-MuseumText, .JP039-MuseumText
	dc.w .EN040-MuseumText, .JP040-MuseumText
	dc.w .EN041-MuseumText, .JP041-MuseumText
	dc.w .EN042-MuseumText, .JP042-MuseumText
	dc.w .EN043-MuseumText, .JP043-MuseumText
	dc.w .EN044-MuseumText, .JP044-MuseumText
	dc.w .EN045-MuseumText, .JP045-MuseumText
	dc.w .EN046-MuseumText, .JP046-MuseumText
	dc.w .EN047-MuseumText, .JP047-MuseumText
	dc.w .EN048-MuseumText, .JP048-MuseumText
	dc.w .EN049-MuseumText, .JP049-MuseumText
	dc.w .EN050-MuseumText, .JP050-MuseumText
	dc.w .EN051-MuseumText, .JP051-MuseumText
	dc.w .EN052-MuseumText, .JP052-MuseumText
	dc.w .EN053-MuseumText, .JP053-MuseumText
	dc.w .EN054-MuseumText, .JP054-MuseumText
	dc.w .EN055-MuseumText, .JP055-MuseumText
	dc.w .EN056-MuseumText, .JP056-MuseumText
	dc.w .EN057-MuseumText, .JP057-MuseumText
	dc.w .EN058-MuseumText, .JP058-MuseumText
	dc.w .EN059-MuseumText, .JP059-MuseumText
	dc.w .EN060-MuseumText, .JP060-MuseumText
	dc.w .EN061-MuseumText, .JP061-MuseumText
	dc.w .EN062-MuseumText, .JP062-MuseumText
	dc.w .EN063-MuseumText, .JP063-MuseumText
	dc.w .EN064-MuseumText, .JP064-MuseumText
	dc.w .EN065-MuseumText, .JP065-MuseumText
	dc.w .EN066-MuseumText, .JP066-MuseumText
	dc.w .EN067-MuseumText, .JP067-MuseumText
	dc.w .EN068-MuseumText, .JP068-MuseumText
	dc.w .EN069-MuseumText, .JP069-MuseumText
	dc.w .EN070-MuseumText, .JP070-MuseumText
	dc.w .EN071-MuseumText, .JP071-MuseumText
	dc.w .EN072-MuseumText, .JP072-MuseumText
	dc.w .EN073-MuseumText, .JP073-MuseumText
	dc.w .EN074-MuseumText, .JP074-MuseumText
	dc.w .EN075-MuseumText, .JP075-MuseumText
	dc.w .EN076-MuseumText, .JP076-MuseumText
	dc.w .EN077-MuseumText, .JP077-MuseumText
	dc.w .EN078-MuseumText, .JP078-MuseumText
	dc.w .EN079-MuseumText, .JP079-MuseumText
	dc.w .EN080-MuseumText, .JP080-MuseumText
	dc.w .EN081-MuseumText, .JP081-MuseumText
	dc.w .EN082-MuseumText, .JP082-MuseumText
	dc.w .EN083-MuseumText, .JP083-MuseumText
	dc.w .EN084-MuseumText, .JP084-MuseumText
	dc.w .EN085-MuseumText, .JP085-MuseumText
	dc.w .EN086-MuseumText, .JP086-MuseumText
	dc.w .EN087-MuseumText, .JP087-MuseumText
	dc.w .EN088-MuseumText, .JP088-MuseumText
	dc.w .EN089-MuseumText, .JP089-MuseumText
	dc.w .EN090-MuseumText, .JP090-MuseumText
	dc.w .EN091-MuseumText, .JP091-MuseumText
	dc.w .EN092-MuseumText, .JP092-MuseumText
	dc.w .EN093-MuseumText, .JP093-MuseumText
	dc.w .EN094-MuseumText, .JP094-MuseumText
	dc.w .EN095-MuseumText, .JP095-MuseumText
	dc.w .EN096-MuseumText, .JP096-MuseumText
	dc.w .EN097-MuseumText, .JP097-MuseumText
	dc.w .EN098-MuseumText, .JP098-MuseumText
	dc.w .EN099-MuseumText, .JP099-MuseumText
	dc.w .EN100-MuseumText, .JP100-MuseumText
	dc.w .EN101-MuseumText, .JP101-MuseumText
	dc.w .EN102-MuseumText, .JP102-MuseumText
	dc.w .EN103-MuseumText, .JP103-MuseumText
	dc.w .EN104-MuseumText, .JP104-MuseumText
	dc.w .EN105-MuseumText, .JP105-MuseumText
	dc.w .EN106-MuseumText, .JP106-MuseumText
	dc.w .EN107-MuseumText, .JP107-MuseumText
	dc.w .EN108-MuseumText, .JP108-MuseumText
	dc.w .EN109-MuseumText, .JP109-MuseumText
	dc.w .EN110-MuseumText, .JP110-MuseumText
	dc.w .EN111-MuseumText, .JP111-MuseumText
	dc.w .EN112-MuseumText, .JP112-MuseumText
	dc.w .EN113-MuseumText, .JP113-MuseumText
	dc.w .EN114-MuseumText, .JP114-MuseumText
	dc.w .EN115-MuseumText, .JP115-MuseumText
	dc.w .EN116-MuseumText, .JP116-MuseumText
	dc.w .EN117-MuseumText, .JP117-MuseumText
	dc.w .EN118-MuseumText, .JP118-MuseumText
	dc.w .EN119-MuseumText, .JP119-MuseumText
	dc.w .EN120-MuseumText, .JP120-MuseumText
.EN001:	str "SONIC THE HEDGEHOG"
.JP001:	str SO, NI, xTU, KU, dot, ZA, dot, HE, xTU, JI, HO, xTU, GU
.EN002:	str 'MILES "TAILS" PROWER'
.JP002:	str MA, I, RU, SU, dot, TE, I, RU, SU, dot, PA, U, WA, dash
.EN003:	str "KNUCKLES THE ECHIDNA"
.JP003:	str NA, xTU, KU, RU, ZU, dot, ZA, dot, E, KI, DO, xU, NA
.EN004:	str "AMY ROSE"
.JP004:	str E, MI, dash, dot, RO, dash, ZU
.EN005:	str "MIGHTY THE ARMADILLO"
.JP005:	str MA, I, TE, xI, dash, dot, ZA, dot, A, RU, MA, JI, RO
.EN006:	str "RAY THE FLYING SQUIRREL"
.JP006:	str RE, I, dot, ZA, dot, FU, RA, I, N, GU, SU, KU, I, RE, RU
.EN007:	str "METAL SONIC"
.JP007:	str ME, TA, RU, SO, NI, xTU, KU
.EN008:	str "DR. EGGMAN"
.JP008:	str DO, KU, TA, dash, dot, E, xTU, GU, MA, N
.EN009:	str "EGG ROBO"
.JP009:	str E, xTU, GU, RO, BO
.EN010:	str "MECHA SONIC"
.JP010:	str ME, KA, SO, NI, xTU, KU
.EN011:	str "FLICKY"
.JP011:	str FU, RI, xTU, KI, dash
.EN012:	str "CUCKY"
.JP012:	str KU, xTU, KI, dash
.EN013:	str "POCKY"
.JP013:	str PO, xTU, KI, dash
.EN014:	str "RICKY"
.JP014:	str RI, xTU, KI, dash
.EN015:	str "PECKY"
.JP015:	str PE, xTU, KI, dash
.EN016:	str "ROCKY"
.JP016:	str RO, xTU, KI, dash
.EN017:	str "PICKY"
.JP017:	str PI, xTU, KI, dash
.EN018: str "DOLPHIN & SEAGULL"
.JP018:	str I, RU, KA, to, KA, MO, ME
.EN019:	str "SUPER SONIC"
.JP019:	str SU, dash, PA, dash, SO, NI, xTU, KU
.EN020:	str "RINGS"
.JP020:	str RI, N, GU
.EN021:	str "COMBINE RING"
.JP021:	str KO, N, BA, I, N, RI, N, GU
.EN022:	str "SPECIAL RING"
.JP022:	str SU, PE, SHI, xYA, RU, RI, N, GU
.EN023:	str "BLUE SPHERES"
.JP023:	str BU, RU, dash, SU, FU, xI, A
.EN024:	str "COLOR BLOCKS"
.JP024:	str KA, RA, dash, BU, RO, xTU, KU
.EN025:	str "CHAOS EMERALDS"
.JP025:	str KA, O, SU, E, ME, RA, RU, DO
.EN026:	str "ITEM BALL"
.JP026:	str A, I, TE, MU, BO, dash, RU
.EN027:	str "ITEM BOX"
.JP027:	str A, I, TE, MU, BO, xTU, KU, SU
.EN028:	str "FLAME BARRIER"
.JP028:	str FU, RE, I, MU, BA, RI, A
.EN029:	str "THUNDER BARRIER"
.JP029:	str SA, N, DA, dash, BA, RI, A
.EN030:	str "AQUA BARRIER"
.JP030:	str A, KU, A, BA, RI, A
.EN031:	str "AIR BUBBLES"
.JP031:	str KUU, KII, no, AWA
.EN032:	str "PHOTO PIECE"
.JP032:	str FU, xO, TO, PI, dash, SU
.EN033:	str "BONUS PLATE"
.JP033:	str BO, dash, NA, SU, PU, RE, dash, TO
.EN034:	str "STAR POST"
.JP034:	str PO, I, N, TO, MA, dash, KA, dash
.EN035:	str "STAR BUMPER"
.JP035:	str BO, BI, N
.EN036:	str "SPRING"
.JP036:	str SU, PU, RI, N, GU
.EN037:	str "SPIKES"
.JP037:	str TO, GE
.EN038:	str "SWITCH"
.JP038:	str SU, I, xTU, CHI
.EN039:	str "KNUCKLES BARRIER"
.JP039:	str NA, xTU, KU, RU, ZU, no, BA, RI, A
.EN040:	str "METAL SONIC HOLOGRAM"
.JP040:	str ME, TA, RU, SO, NI, xTU, KU, no, HO, RO, GU, RA, MU
.EN041:	str "TORNADO"
.JP041:	str TO, RU, NE, dash, DO
.EN042:	str "EGG MOBILE"
.JP042:	str E, xTU, GU, MO, dash, BI, RU
.EN043:	str "CAPSULE"
.JP043:	str KA, PU, SE, RU
.EN044:	str "GHOSTS"
.JP044:	str HI, xYU, dash, DO, RO
.EN045:	str "WARP POINT"
.JP045:	str WA, dash, PU, PO, I, N, TO
.EN046:	str "SUPER EMERALDS"
.JP046:	str SU, dash, PA, dash, E, ME, RA, RU, DO
.EN047:	str "MASTER EMERALD"
.JP047:	str MA, SU, TA, dash, E, ME, RA, RU, DO
.EN048:	str "ANGEL ISLAND"
.JP048:	str E, N, JI, xE, RU, A, I, RA, N, DO
.EN049:	str "DEATH EGG"
.JP049:	str DE, SU, E, xTU, GU
.EN050:	str "MONKEY DUDE"
.JP050:	str SA, RU, DA, dash
.EN051:	str "RHINOBOT"
.JP051:	str SA, I, KU, RO, N
.EN052:	str "BLOOMINATOR"
.JP052:	str CHI, xYU, dash, RI, xTU, PO, N
.EN053:	str "CATERKILLER JR."
.JP053:	str ME, RA, MO, dash, RA
.EN054:	str "POINTDEXTER"
.JP054:	str PA, FU
.EN055:	str "BLASTOID"
.JP055:	str PO, N, TA, dash
.EN056:	str "MEGA CHOPPER"
.JP056:	str KA, PU, KA, PU
.EN057:	str "BUGGERNAUT"
.JP057:	str BU, N, BU, dash, N
.EN058:	str "TURBO SPIKER"
.JP058:	str YA, DO, RI, N, JI, xE, xTU, TO
.EN059:	str "JAWZ"
.JP059:	str JI, xYO, dash, ZU, N
.EN060:	str "SPIKER"
.JP060:	str TO, GE, MA, NE
.EN061:	str "BUBBLES"
.JP061:	str HA, RI, SE, N, BO
.EN062:	str "MANTIS"
.JP062:	str HO, xTU, PA, dash
.EN063:	str "RELIEF"
.JP063:	str RE, RI, dash, FU
.EN064:	str "CLAMER"
.JP064:	str JI, xE, RU, SU, TA, dash
.EN065:	str "BATBOT"
.JP065:	str HA, RO, GE, N
.EN066:	str "SPARKLE"
.JP066:	str SU, PA, dash, KU, RU
.EN067:	str "PENGUINATOR"
.JP067:	str PE, N, PE, N
.EN068:	str "STAR POINTER"
.JP068:	str A, I, SU, DA, SU
.EN069:	str "ORBINAUT"
.JP069:	str BO, dash, RA
.EN070:	str "FLYBOT767"
.JP070:	str ME, dash, BE
.EN071:	str "RIBOT"
.JP071:	str KE, RO, xTU, PO
.EN072:	str "SNALE BLASTER"
.JP072:	str DE, N, DE, N
.EN073:	str "CORKEY"
.JP073:	str RE, dash, ZA, dash
.EN074:	str "MADMOLE"
.JP074:	str MO, GU, MO, GU
.EN075:	str "CLUCKOID"
.JP075:	str KE, xTU, KO, dash
.EN076:	str "MUSHMEANIE"
.JP076:	str HI, DO, xU, N
.EN077:	str "BUTTERDROID"
.JP077:	str TE, FU, TE, FU
.EN078:	str "DRAGONFLY"
.JP078:	str TO, N, BA, dash
.EN079:	str "BLASTER"
.JP079:	str PO, N, PO, N
.EN080:	str "TECHNOSQUEEK"
.JP080:	str CHI, xYU, dash, CHI, xYU, dash
.EN081:	str "SKORP"
.JP081:	str SU, KO, dash, PU
.EN082:	str "SANDWORM"
.JP082:	str NA, dash, RU
.EN083:	str "ROCK'N"
.JP083:	str RO, xTU, KU, N
.EN084:	str "FIREWORM"
.JP084:	str MA, N, BA, dash
.EN085:	str "STONE MIMIC"
.JP085:	str I, WA, MO, DO, KI
.EN086:	str "TOXOMISTER"
.JP086:	str PU, WA, ZO, dash, N
.EN087:	str "EGG ROBO"
.JP087:	str E, xTU, GU, RO, BO
.EN088:	str "SPIKEBONKER"
.JP088:	str GA, dash, DE, xI
.EN089:	str "CHAINSPIKE"
.JP089:	str KU, RO, U
.EN090:	str "FIRE BREATH"
.JP090:	str FU, xA, I, YA, dash, BU, RE, SU
.EN091:	str "BIG SHAKER"
.JP091:	str BI, xTU, GU, SHI, xE, I, KA, dash
.EN092:	str "TUNNELBOT"
.JP092:	str GA, KI, dash, N
.EN093:	str "BOWLING SPIN"
.JP093:	str BO, U, RI, N, GU, SU, PI, N
.EN094:	str "BIG ICEDUS"
.JP094:	str BI, xTU, GU, A, I, SU, DA, SU
.EN095:	str "TWIN HAMMER"
.JP095:	str TSU, I, N, HA, N, MA, dash
.EN096:	str "HEY-HO"
.JP096:	str HE, I, dot, HO, U
.EN097:	str "GAPSULE"
.JP097:	str GA, PU, SE, RU
.EN098:	str "BARRIER MACHINE"
.JP098:	str BA, RI, A, MA, SHI, N
.EN099:	str "GUARDIAN"
.JP099:	str GA, dash, DE, xI, A, N
.EN100:	str "BIG TUNNELBOT"
.JP100:	str BI, xTU, GU, GA, KI, dash, N
.EN101:	str "HEAT ARMS"
.JP101:	str HI, dash, TO, A, dash, MU, ZU
.EN102:	str "RED EYE"
.JP102:	str RE, xTU, DO, A, I
.EN103:	str "DEATH BALL"
.JP103:	str DE, SU, BO, dash, RU
.EN104:	str "FLAME MOBILE"
.JP104:	str FU, RE, I, MU, MO, dash, BI, RU
.EN105:	str "SCREW MOBILE"
.JP105:	str SU, KU, RI, xYU, dash, MO, dash, BI, RU
.EN106:	str "DRILL MOBILE"
.JP106:	str DO, RI, RU, MO, dash, BI, RU
.EN107:	str "GRAVITON MOBILE"
.JP107:	str GU, RA, BI, TO, N, MO, dash, BI, RU
.EN108:	str "FREEZER MOBILE"
.JP108:	str FU, RI, dash, ZA, dash, MO, dash, BI, RU
.EN109:	str "BALL SHOOTER"
.JP109:	str BO, dash, RU, SHI, xYU, dash, TA, dash
.EN110:	str "BEAM ROCKET"
.JP110:	str BI, dash, MU, RO, KE, xTU, TO
.EN111:	str "BIG ARM"
.JP111:	str BI, xTU, GU, A, dash, MU
.EN112:	str "JET MOBILE"
.JP112:	str JI, xE, xTU, TO, MO, dash, BI, RU
.EN113:	str "HANG MOBILE"
.JP113:	str HA, N, GU, MO, dash, BI, RU
.EN114:	str "EGG GOLEM"
.JP114:	str E, xTU, GU, GO, dash, RE, MU
.EN115:	str "HOT MOBILE"
.JP115:	str HO, xTU, TO, MO, dash, BI, RU
.EN116:	str "EGG MOBILE: HAMMER BALL"
.JP116:	str E, xTU, GU, MO, dash, BI, RU, dot, HA, N, MA, dash, BO, dash, RU
.EN117:	str "E.MOBILE: FLYING MACHINE"
.JP117:	str E, xTU, GU, MO, dash, BI, RU, dot, FU, RA, I, N, GU, MA, SHI, N
.EN118:	str "DEATH EGG ROBOT"
.JP118:	str RO, BO, dot, E, xTU, GU, MA, N
.EN119:	str "FINAL WEAPON"
.JP119:	str FU, xA, I, NA, RU, U, xE, PO, N
.EN120:	str "GIANT EGGMAN ROBOT"
.JP120:	str KYO, DAI, E, xTU, GU, MA, N, RO, BO
	even

	restore
	endsection strings

using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Drawing;
using SonicRetro.SonLVL.API;

namespace S3KObjectDefinitions.HPZ
{
	class CutsceneKnuckles : Common.CutsceneKnuckles
	{
		public override void Init(ObjectData data)
		{
			BuildSpritesSubtypes(4, false);
		}
	}
}

namespace S3KObjectDefinitions.LBZ
{
	class CutsceneKnucklesS3 : Common.CutsceneKnuckles
	{
		public override void Init(ObjectData data)
		{
			BuildSpritesSubtypes(4, true, "../Levels/LBZ/Tiles/Act 2 Death Egg 2.bin");
		}
	}

	class CutsceneKnuckles : Common.CutsceneKnuckles
	{
		public override void Init(ObjectData data)
		{
			BuildSpritesSubtypes(4, false, "../Levels/LBZ/Tiles/Act 2 Death Egg 2.bin");
		}
	}
}

namespace S3KObjectDefinitions.Common
{
	class CutsceneKnucklesS3 : CutsceneKnuckles
	{
		public override void Init(ObjectData data)
		{
			BuildSpritesSubtypes(4, true);
		}
	}

	class CutsceneKnuckles : ObjectDefinition
	{
		private ReadOnlyCollection<byte> subtypes;
		private Sprite[][] sprites;

		private string[] subtypeNames;
		private Sprite[] extraSprites;

		public override string Name
		{
			get { return "Cutscene Knuckles"; }
		}

		public override Sprite Image
		{
			get { return sprites[1][0]; }
		}

		public override ReadOnlyCollection<byte> Subtypes
		{
			get { return subtypes; }
		}

		public override string SubtypeName(byte subtype)
		{
			return subtypeNames[subtype >> 2];
		}

		public override Sprite SubtypeImage(byte subtype)
		{
			var index = GetSpriteIndex(subtype);
			return sprites[index][0];
		}

		public override Sprite GetSprite(ObjectEntry obj)
		{
			var index = GetSpriteIndex(obj.SubType);
			var sprite = GetFlippedSprite(obj, index);
			var extra = extraSprites[index];

			return extra == null ? sprite : index == 11
				? new Sprite(new Sprite(extra, -obj.X, -obj.Y), sprite) : new Sprite(extra, sprite);
		}

		public override Rectangle GetBounds(ObjectEntry obj)
		{
			var index = GetSpriteIndex(obj.SubType);
			var bounds = GetFlippedSprite(obj, index).Bounds;
			bounds.Offset(obj.X, obj.Y);

			return bounds;
		}

		public override int GetDepth(ObjectEntry obj)
		{
			return obj.SubType == 0x28 ? 2 : 3;
		}

		public override void Init(ObjectData data)
		{
			BuildSpritesSubtypes(4, false);
		}

		protected void BuildSpritesSubtypes(int startpal, bool s3, string girderart = "../General/Sprites/SS Entry/Badnik Explosion.bin")
		{
			var bytes = new byte[s3 ? 7 : 12];
			for (var i = 0; i < bytes.Length; i++)
				bytes[i] = (byte)(i << 2);

			subtypes = new ReadOnlyCollection<byte>(bytes);
			subtypeNames = new string[bytes.Length];

			sprites = new Sprite[bytes.Length + 1][];
			extraSprites = new Sprite[sprites.Length];

			sprites[0] = BuildFlippedSprites(ObjectHelper.UnknownObject, false);

			var art = LevelData.ReadFile("../General/Sprites/Knuckles/Art/Knuckles.bin", CompressionType.Uncompressed);
			var mapfile = "../General/Sprites/Knuckles/Map - Knuckles.asm";
			var plcfile = "../General/Sprites/Knuckles/DPLC - Knuckles.asm";

			subtypeNames[0] = "Angel Island 1";
			sprites[1] = BuildFlippedSprites(ObjectHelper.MapASMDPLCToBmp(
				art, mapfile, "word_14B58E", EngineVersion.S3K, plcfile, "word_14C36E", EngineVersion.S2, startpal), false);

			subtypeNames[1] = "Angel Island 2";
			sprites[2] = BuildFlippedSprites(ObjectHelper.MapASMDPLCToBmp(
				art, mapfile, "word_14B01E", EngineVersion.S3K, plcfile, "word_14C126", EngineVersion.S2, startpal, true), true);

			subtypeNames[2] = "Hydrocity 2";
			if (s3) sprites[3] = sprites[2];
			else
			{
				sprites[3] = BuildFlippedSprites(new Sprite(sprites[2][0]), false);
				foreach (var sprite in sprites[3]) sprite.Offset(158, 0);

				extraSprites[3] = ObjectHelper.MapASMToBmp(LevelData.ReadFile(
					"../General/Sprites/Buttons/Gray Button.bin", CompressionType.Nemesis),
					"../General/Sprites/Buttons/Map - Button.asm", 2, 0, true);
				extraSprites[3].Offset(0, 12);
			}

			subtypeNames[3] = "Carnival Night 2A";
			sprites[4] = sprites[2];

			subtypeNames[4] = "Carnival Night 2B";
			sprites[5] = sprites[2];

			subtypeNames[5] = "Launch Base 1";
			sprites[6] = sprites[2];

			subtypeNames[6] = "Launch Base 2";
			sprites[7] = sprites[2];

			var tmp = ObjectHelper.MapASMToBmp(LevelData.ReadFile(girderart, CompressionType.KosinskiM),
				"../Levels/LBZ/Misc Object Data/Map - Knuckles Pillar.asm", 0, 2);
			extraSprites[7] = new Sprite(tmp, new Sprite(tmp, 0, 32), new Sprite(tmp, 0, 64), new Sprite(tmp, 0, 96));
			extraSprites[7].Offset(0, 36);

			if (s3) return;

			var idle = new Sprite(sprites[2][0]);
			idle.InvertPriority();
			subtypeNames[7] = "Mushroom Hill 1";
			sprites[8] = BuildFlippedSprites(idle, false);

			subtypeNames[8] = "Mushroom Hill 2";
			sprites[9] = sprites[2];

			var indexer = new MultiFileIndexer<byte>();
			indexer.AddFile(new List<byte>(LevelData.ReadFile(
				"../Levels/MHZ/Nemesis Art/Misc Art.bin", CompressionType.Nemesis)), -5856);
			extraSprites[9] = ObjectHelper.MapASMToBmp(indexer.ToArray(),
				"../Levels/MHZ/Misc Object Data/Map - Act 2 Knuckles Switch.asm", 0, startpal, true);
			extraSprites[9].Offset(-8, 0);

			subtypeNames[9] = "Lava Reef 2";
			sprites[10] = sprites[2];

			subtypeNames[10] = "Hidden Palace";
			sprites[11] = BuildFlippedSprites(ObjectHelper.MapASMDPLCToBmp(
				art, mapfile, "word_14BA68", EngineVersion.S3K, plcfile, "word_14C554", EngineVersion.S2, startpal), true);

			indexer.AddFile(new List<byte>(LevelData.ReadFile("LevelArt", 0)), -32);
			extraSprites[11] = ObjectHelper.MapASMToBmp(indexer.ToArray(),
				"../Levels/LRZ/Misc Object Data/Map - Act 3 Platform.asm", 6, 2, true);
			extraSprites[11].Offset(0x17F0, 0x660);

			subtypeNames[11] = "Sky Sanctuary";
			sprites[12] = BuildFlippedSprites(ObjectHelper.MapASMDPLCToBmp(LevelData.ReadFile(
				"../General/Sprites/Knuckles/Cutscene/SSZ Tired.bin", CompressionType.Uncompressed),
				"../General/Sprites/Knuckles/Cutscene/Map - SSZ Tired.asm",
				"../General/Sprites/Knuckles/Cutscene/DPLC - SSZ Tired.asm", 1, startpal, true), true);
		}

		private Sprite[] BuildFlippedSprites(Sprite sprite, bool flip)
		{
			if (flip) sprite.Flip(true, false);

			var flipX = new Sprite(sprite, true, false);
			var flipY = new Sprite(sprite, false, true);
			var flipXY = new Sprite(sprite, true, true);

			return new[] { sprite, flipX, flipY, flipXY };
		}

		private int GetSpriteIndex(byte subtype)
		{
			if ((subtype & 0x03) != 0) return 0;
			var index = subtype >> 2;
			return index < subtypeNames.Length ? index + 1 : 0;
		}

		private Sprite GetFlippedSprite(ObjectEntry obj, int index)
		{
			return sprites[index][(obj.XFlip ? 1 : 0) | (obj.YFlip ? 2 : 0)];
		}
	}
}

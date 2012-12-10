/**
 * Copyright 2012-2013 Vicarious, Inc. All Rights Reserved.
 */
class LearningPlayerController extends GamePlayerController;

var GFx_MenuUI MenuUI;

Exec function Head01()
{
	LearningPawn(Pawn).Head.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Head01');
}

Exec function Head02()
{
	LearningPawn(Pawn).Head.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Head02');
}

Exec function Head03()
{
	LearningPawn(Pawn).Head.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Head03');
}

Exec function Hands01()
{
	LearningPawn(Pawn).Hands.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Arms01');
}

Exec function Hands02()
{
	LearningPawn(Pawn).Hands.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Arms02');
}

Exec function Hands03()
{
	LearningPawn(Pawn).Hands.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Arms03');
}

Exec function Shoes01()
{
	LearningPawn(Pawn).Shoes.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Boots01');
}

Exec function Shoes02()
{
	LearningPawn(Pawn).Shoes.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Boots02');
}

Exec function Shoes03()
{
	LearningPawn(Pawn).Shoes.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Boots03');
}

Exec function Pants01()
{
	LearningPawn(Pawn).Pants.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Thighs01');
}

Exec function Pants02()
{
	LearningPawn(Pawn).Pants.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Thighs02');
}

Exec function Shirt01()
{
	LearningPawn(Pawn).Shirt.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Thighs02');
}

Exec function Shirt02()
{
	LearningPawn(Pawn).Shirt.SetSkeletalMesh(SkeletalMesh'UEXCorrupt.SK_CH_Corrupt_Male_Thighs02');
}

//NO Dress
Exec function Body01_None()
{
	LearningPawn(Pawn).Body.SetSkeletalMesh(none);
}

Exec function OpenMenu()
{
	 if (MenuUI != None)
	{
	MenuUI .Close(true);
	MenuUI = None;
	return;
	}
	MenuUI = new () class'GFx_MenuUI';
	if (MenuUI != none)
	{
	MenuUI.Init();
	MenuUI.OwningPlayer=self;
	MenuUI.LocalPlayerOwnerIndex = class'Engine'.static.GetEngine().GamePlayers.Find(LocalPlayer(Player));
	MenuUI.SetTimingMode(TM_Real);
	MenuUI.ExternalInterface = self;
	}
}

defaultproperties
{
	CameraClass=class'LearningGame.LearningCamera'
}


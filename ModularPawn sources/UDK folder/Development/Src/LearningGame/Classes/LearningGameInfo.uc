/**
 * Copyright 2012-2013 Vicarious, Inc. All Rights Reserved.
 */
class LearningGameInfo extends GameInfo;

var Pawn DefaultPawnArchetype;

auto State PendingMatch
{
Begin:
	StartMatch();
}

function Pawn SpawnDefaultPawnFor(Controller NewPlayer, NavigationPoint StartSpot)
{
	local class<Pawn> DefaultPlayerClass;
	local Rotator StartRotation;
	local Pawn ResultPawn;

	DefaultPlayerClass = GetDefaultPlayerClass(NewPlayer);

	// don't allow pawn to be spawned with any pitch or roll
	StartRotation.Yaw = StartSpot.Rotation.Yaw;

	ResultPawn = Spawn(DefaultPlayerClass,,,StartSpot.Location,StartRotation,DefaultPawnArchetype);
	if ( ResultPawn == None )
	{
		`log("Couldn't spawn player of type "$DefaultPlayerClass$" at "$StartSpot);
	}
	return ResultPawn;
}

defaultproperties
{
	HUDType=class'GameFramework.MobileHUD'
	PlayerControllerClass=class'LearningGame.LearningPlayerController'
	DefaultPawnClass=class'LearningGame.LearningPawn'
	DefaultPawnArchetype=LearningPawn'Learning.Pawn.LearnPawn'
	bDelayedStart=false
}



/**
 * Copyright 2012-2013 Vicarious, Inc. All Rights Reserved.
 */
class LearningPawn extends Pawn
	ClassGroup(ModularPawn)
	Placeable;
	
var(Pawn) SkeletalMeshComponent BaseMesh;
var(Pawn) SkeletalMeshComponent BaseBody;
var(Pawn) SkeletalMeshComponent Head;
var(Pawn) SkeletalMeshComponent Body;
var(Pawn) SkeletalMeshComponent Pants;
var(Pawn) SkeletalMeshComponent Shoes;
var(Pawn) SkeletalMeshComponent Hands; 
var(Pawn) SkeletalMeshComponent Shirt;
var(Pawn) const LightEnvironmentComponent LightEnvironment;

defaultproperties
{
	Begin Object Class=DynamicLightEnvironmentComponent Name=MyLightEnvironment
		bSynthesizeSHLight=true
		bIsCharacterLightEnvironment=true
		bUseBooleanEnvironmentShadowing=false
		InvisibleUpdateTime=1.f
		MinTimeBetweenFullUpdates=0.2f
	End Object
	LightEnvironment=MyLightEnvironment
	Components.Add(MyLightEnvironment)
	
	Begin Object class=SkeletalMeshComponent name=BaseBody
		SkeletalMesh=SkeletalMesh'utexamplecrowd.Mesh.SK_Crowd_Robot'
		AnimTreeTemplate=AnimTree'EditorMeshes.PreviewTree'
		PhysicsAsset=PhysicsAsset'UTExampleCrowd.Mesh.SK_Crowd_Robot_Physics'
		AnimSets(0)=AnimSet'UTExampleCrowd.Mesh.SK_Crowd_Robot_Anims'
		BlockRigidBody=true
		HiddenGame=true
	End Object
	Mesh=BaseBody
	Components.Add(BaseBody)
		
		Begin Object class=SkeletalMeshComponent name=BaseMeshComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
		End Object
		BaseMesh=BaseMeshComponent
		Components.Add(BaseMeshComponent)
	
		Begin Object class=SkeletalMeshComponent name=HeadComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
		End Object
		Head=HeadComponent
		Components.Add(HeadComponent)
	
		Begin Object class=SkeletalMeshComponent name=BodyComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
		End Object
		Body=BodyComponent
		Components.Add(BodyComponent)
	
		Begin Object class=SkeletalMeshComponent name=PantsComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
		End Object
		Pants=PantsComponent
		Components.Add(PantsComponent)
	
		Begin Object class=SkeletalMeshComponent name=ShoesComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
		End Object
		Shoes=ShoesComponent
		Components.Add(ShoesComponent)
	
		Begin Object class=SkeletalMeshComponent name=HandsComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
			End Object
		Hands=HandsComponent
		Components.Add(HandsComponent)


		Begin Object class=SkeletalMeshComponent name=ShirtComponent
			AlwaysLoadOnClient=true
			AlwaysLoadOnServer=true
			CastShadow=true
			BlockRigidBody=true
			bUpdateSkelWhenNotRendered=true
			bIgnoreControllersWhenNotRendered=false
			bUpdateKinematicBonesFromAnimation=true
			bCastDynamicShadow=true
			RBChannel=RBCC_Untitled3
			RBCollideWithChannels=(Untitled3=true)
			LightEnvironment=MyLightEnvironment
			bAcceptsDynamicDecals=false
			bHasPhysicsAssetInstance=true
			TickGroup=TG_PreAsyncWork
			MinDistFactorForKinematicUpdate=0.2f
			bChartDistanceFactor=true
			RBDominanceGroup=20
			bUseOnePassLightingOnTranslucency=true
			bPerBoneMotionBlur=true
			ParentAnimComponent=BaseBody
		End Object
		Shirt=ShirtComponent
		Components.Add(ShirtComponent)
}
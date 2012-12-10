class Gfx_MenuUI extends GFxMoviePlayer;

var PlayerController OwningPlayer;

function Init(optional LocalPlayer LocalPlayer)
{
Super.Init(LocalPlayer);
Start();
Advance(0);
}

defaultproperties
{ 
bDisplayWithHudOff=false
TimingMode=TM_Game
MovieInfo=SwfMovie'ModulePawn.ModulPawnMenu'
bPauseGameWhileActive=false
}
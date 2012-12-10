class AnimedLight extends SpotLightToggleable
	placeable
	classGroup (Learning,Light);

function setcolor(float r, float g, float b)
{
	local Color Col;
	Col.R = r;
	Col.G = g;
	Col.B = b;
	
	lightComponent.SetLightProperties(LightComponent.Brightness, Col);
}

auto state Red
{
begin:
	setColor(255,0,0);
	Sleep(2);
	GotoState('Green');
}

state Green
{
begin:
	setColor(0,255,0);
	Sleep(2);
	gotoState('Blue');
}

state Blue
{
begin:
	setColor(0,0,255);
	Sleep(2);
	gotoState('Red');
}

defaultproperties	
{
}
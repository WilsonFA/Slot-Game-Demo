/// @description Insert description here
// You can write your code in this editor

if(y == ystart - 95)
{
	alarm[0] = 1;
}


#region Desaceleração do Reel até a parada.
if(stopping && stop_stage == 0 && y <= ystart + 95)
{
	speed = 8;
	y = ystart;
	stop_stage = 1;
	show_debug_message("1");
}

if(stopping && stop_stage == 1 && y >= ystart + 95)
{
	speed = 6;
	y = ystart;
	stop_stage = 2;
	show_debug_message("2");
}

if(stopping && stop_stage == 2 && y >= ystart + 95)
{
	speed = 4;
	y = ystart;
	stop_stage = 3;
	show_debug_message("3");
}

if(stopping && stop_stage == 3 && y >= ystart + 95)
{
	speed = 3;
	y = ystart;
	stop_stage = 4;
	show_debug_message("4");
}

if(stopping && stop_stage == 4 && y >= ystart + 95)
{
	speed = 2;
	y = ystart;
	stop_stage = 5;
	show_debug_message("5");
}

if(stopping && stop_stage == 5 && y >= ystart + 95)
{
	speed = 1;
	y = ystart;
	stop_stage = 6;
	show_debug_message("6");
}

if(stopping && stop_stage == 6 && y >= ystart + 20)
{
	speed = 0;
	y = ystart;
	show_debug_message("7");
	stopping = false;
	stop_stage = 0;
	global.can_spinnig = true;
}
#endregion


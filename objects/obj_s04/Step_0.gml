/// @description Insert description here
// You can write your code in this editor

//Isso aqui vai ser chamado logo após o REEL ser acionado
if(y == ystart - 180)
{
	alarm[0] = 1;
}

#region Desaceleração do Reel até a parada.
if(stopping && stop_stage == 0 && y <= ystart + 192)
{
	speed = 32;
	y = ystart;
	stop_stage = 1;
	scr_change_sprite_array();
}

if(stopping && stop_stage == 1 && y >= ystart + 192)
{
	speed = 24;
	y = ystart;
	stop_stage = 2;
	scr_change_sprite_array();
}

if(stopping && stop_stage == 2 && y >= ystart + 192)
{
	speed = 16;
	y = ystart;
	stop_stage = 3;
	scr_change_sprite_array();
}

if(stopping && stop_stage == 3 && y >= ystart + 192)
{
	speed = 8;
	y = ystart;
	stop_stage = 4;
	scr_change_sprite_array();
}

if(stopping && stop_stage == 4 && y >= ystart + 192)
{
	speed = 4;
	y = ystart;
	stop_stage = 5;
	scr_change_sprite_array();
}

if(stopping && stop_stage == 5 && y >= ystart + 192)
{
	speed = 2;
	y = ystart;
	stop_stage = 6;
	scr_change_sprite_array();
}

if(stopping && stop_stage == 6 && y >= ystart + 60)
{
	speed = 20;
	direction = 90;
	stop_stage = 6;
	spin_return = true;
}

if(stopping && stop_stage == 6 && y <= ystart - 5 && spin_return == true)
{
	speed = 0;
	y = ystart;
	visible = true;
	stopping = false;
	stop_stage = 0;
	spin_return = false;
	first_spin = true;
	global.can_spinnig = true;
}
#endregion


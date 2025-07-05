/// @description Insert description here
// You can write your code in this editor

//Isso aqui vai ser chamado logo após o REEL ser acionado
if(y == ystart - 180)
{
	alarm[0] = 1;
}

sprite_list = array_length(global.spr_symbols);
idx = irandom(sprite_list - 1);

#region Desaceleração do Reel até a parada.
if(stopping && stop_stage == 0 && y <= ystart + 192)
{
	speed = 32;
	y = ystart;
	stop_stage = 1;
	show_debug_message("1");
	sprite_index = global.spr_symbols[idx];
}

if(stopping && stop_stage == 1 && y >= ystart + 190)
{
	speed = 24;
	y = ystart;
	stop_stage = 2;
	show_debug_message("2");
	sprite_index = global.spr_symbols[idx];
}

if(stopping && stop_stage == 2 && y >= ystart + 190)
{
	speed = 16;
	y = ystart;
	stop_stage = 3;
	show_debug_message("3");
	sprite_index = global.spr_symbols[idx];
}

if(stopping && stop_stage == 3 && y >= ystart + 190)
{
	speed = 8;
	y = ystart;
	stop_stage = 4;
	show_debug_message("4");
	sprite_index = global.spr_symbols[idx];
}

if(stopping && stop_stage == 4 && y >= ystart + 190)
{
	speed = 4;
	y = ystart;
	stop_stage = 5;
	show_debug_message("5");
	sprite_index = global.spr_symbols[idx];
}

if(stopping && stop_stage == 5 && y >= ystart + 190)
{
	speed = 2;
	y = ystart;
	stop_stage = 6;
	show_debug_message("6");
	sprite_index = global.spr_symbols[idx];
}

if(stopping && stop_stage == 6 && y >= ystart + 60)
{
	speed = 20;
	direction = 90;
	stop_stage = 6;
	spin_return = true;
	show_debug_message("7");
}

if(stopping && stop_stage == 6 && y <= ystart - 5 && spin_return == true)
{
	speed = 0;
	y = ystart;
	show_debug_message("8");
	stopping = false;
	stop_stage = 0;
	spin_return = false;
	global.can_spinnig = true;
}
#endregion


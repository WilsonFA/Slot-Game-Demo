/// @description Insert description here
// You can write your code in this editor

//Isso aqui vai ser chamado logo após o REEL ser acionado
if(y == ystart - 190)
{
	alarm[0] = true;
}


#region Desaceleração do Reel até a parada.
if(stopping && stop_stage == 0 && y <= ystart + 190)
{
	speed = 30;
	y = ystart;
	stop_stage = 1;
	sprite_index = obj_cima.sprite_index;
}

if(stopping && stop_stage == 1 && y >= ystart + 190)
{
	speed = 15;
	y = ystart;
	stop_stage = 2;
	sprite_index = obj_cima.sprite_index;
}

if(stopping && stop_stage == 2 && y >= ystart + 190)
{
	speed = 8;
	y = ystart;
	stop_stage = 3;
	sprite_index = obj_cima.sprite_index;
}

if(stopping && stop_stage == 3 && y >= ystart + 190)
{
	speed = 6;
	y = ystart;
	stop_stage = 4;
	sprite_index = obj_cima.sprite_index;
}

if(stopping && stop_stage == 4 && y >= ystart + 190)
{
	speed = 3;
	y = ystart;
	stop_stage = 5;
	sprite_index = obj_cima.sprite_index;
}

if(stopping && stop_stage == 5 && y >= ystart + 190)
{
	speed = 1;
	y = ystart;
	stop_stage = 6;
	sprite_index = obj_cima.sprite_index;
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
	stopping = false;
	stop_stage = 0;
	spin_return = false;
	global.can_spinnig = true;
}
#endregion






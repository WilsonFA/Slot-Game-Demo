/// @description Insert description here
// You can write your code in this editor

scr2_reel_spinning();
_i_obj++;

if(_i_obj < num_spin)
{
	alarm[1] = 10;
}

else
{
	y = ystart;
	speed = 5;
	direction = 270;
	stopping = true;
	_i_obj = 0;
}



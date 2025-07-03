/// @description Insert description here
// You can write your code in this editor

scr2_reel_spinning();
_i_obj++;

if(_i_obj < num_spin)
{
	alarm[1] = 5;
}

else
{
	x = xstart;
	y = ystart;
	speed = 5;
	scr2_reel_spinning_slowly()
	stopping = true;
}



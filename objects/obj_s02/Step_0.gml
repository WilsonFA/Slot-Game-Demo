/// @description Insert description here
// You can write your code in this editor

if(x == xstart && y == ystart - 95)
{
	alarm[0] = 1;
}


if(stopping && speed == 5 && x == xstart && y == ystart + 95)
{
	x = xstart;
	y = ystart;
	speed -= 1;
	stopping = true;
	show_debug_message("1")
}
 
 
if(stopping && speed == 4 && x == xstart && y == ystart + 95)
{
	x = xstart;
	y = ystart;
	speed -= 2;
	stopping = true;
	show_debug_message("2")
}
/*	
	else if(speed <= 2 && x == xstart && y == ystart + 95)
	{
		x = xstart;
		y = ystart;
		move_speed -= 2;
		stopping = true;
		show_debug_message("3")
	}
	
	else if (speed <= 0 && x == xstart && y != ystart)
	{
		x = xstart;
		y = ystart;
		speed = 0;
		stopping = false;
	}
	else if (speed <= 0 && x == xstart && y == ystart)
	{
		x = xstart;
		y = ystart;
		speed = 0;
		stopping = false;
	}
}
*/
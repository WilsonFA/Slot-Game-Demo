// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr2_reel_start()
{	
	with(obj_s02)
	{
		direction = 90;
		speed = 5
	}
}

function scr2_reel_spinning()
{
	direction = 270;
	speed = 10;
}

function scr2_reel_spinning_slowly()
{
	direction = 270;
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_reel_start()
{	
	with(obj_s01)
	{
		direction = 90;
		speed = 19
		global.can_spinnig = false;
	}
	
	with(obj_s02)
	{
		direction = 90;
		speed = 19;
	}
	
	with(obj_s03)
	{
		direction = 90;
		speed = 19
	}
	
	with(obj_s04)
	{
		direction = 90;
		speed = 19
	}
	
	with(obj_s05)
	{
		direction = 90;
		speed = 19
	}
}

function scr_reel_spinning()
{
	direction = 270;
	speed = 40;
}
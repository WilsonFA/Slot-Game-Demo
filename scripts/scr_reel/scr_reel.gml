// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function scr_reel_spinnig()
{
	with(obj_s01)
	{
		direction = 270
		speed = 50
	}
	with(obj_s02)
	{
		direction = 270
		speed = 50
	}
	with(obj_s03)
	{
		direction = 270
		speed = 50
	}
	with(obj_s04)
	{
		direction = 270
		speed = 50
	}
	with(obj_s05)
	{
		direction = 270
		speed = 50
	}
}

function scr_reel_start()
{	
#region Symbol 01
	var _s01_x = obj_s01.x;
	var _s01_y = obj_s01.y;
	
	if(keyboard_check_pressed(vk_enter))
	{
		var _dir = point_direction(_s01_x, _s01_y, _s01_x, _s01_y - 95);
		
		with(obj_s01)
		{
			direction = _dir;
			speed = 5
			alarm[0] = 20;
		}
	}
#endregion

#region Symbol 02
	var _s02_x = obj_s02.x;
	var _s02_y = obj_s02.y;
	
	if(keyboard_check_pressed(vk_enter))
	{
		var _dir = point_direction(_s02_x, _s02_y, _s02_x, _s02_y - 95);
		
		with(obj_s02)
		{
			direction = _dir;
			speed = 5
		}
	}
#endregion

#region Symbol 03
	var _s03_x = obj_s03.x;
	var _s03_y = obj_s03.y;
	
	if(keyboard_check_pressed(vk_enter))
	{
		var _dir = point_direction(_s03_x, _s03_y, _s03_x, _s03_y - 95);
		
		with(obj_s03)
		{
			direction = _dir;
			speed = 5
		}
	}
#endregion

#region Symbol 04
	var _s04_x = obj_s04.x;
	var _s04_y = obj_s04.y;
	
	if(keyboard_check_pressed(vk_enter))
	{
		var _dir = point_direction(_s04_x, _s04_y, _s04_x, _s04_y - 95);
		
		with(obj_s04)
		{
			direction = _dir;
			speed = 5
		}
	}
#endregion

#region Symbol 05
	var _s05_x = obj_s05.x;
	var _s05_y = obj_s05.y;
	
	if(keyboard_check_pressed(vk_enter))
	{
		var _dir = point_direction(_s05_x, _s05_y, _s05_x, _s05_y - 95);
		
		with(obj_s05)
		{
			direction = _dir;
			speed = 5
		}
	}
}
#endregion


function scr_reel_stopping()
{
	var _s01_x = x;
	var _s01_y = y;
	var _slowly_speed = speed;
	
	direction = point_direction(_s01_x,_s01_y,_s01_x,_s01_y + 95);
	speed = 2;
}
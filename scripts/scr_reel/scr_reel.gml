// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_reel_start()
{	
	global.can_spinnig = false;
	
	with(obj_s01)
	{
		direction = 90;
		speed = 20;
	}
	
	with(obj_s02)
	{
		direction = 90;
		speed = 20;
		visible = false;
	}
	
	with(obj_s03)
	{
		direction = 90;
		speed = 20;
		visible = false;
	}
	
	with(obj_s04)
	{
		direction = 90;
		speed = 20;
		visible = false;
	}
	
	with(obj_s05)
	{
		direction = 90;
		speed = 20;
	}
}

function scr_reel_spinning()
{
	direction = 270;
	speed = 48;
}

function scr_change_sprite_array()
{
	var total = array_length(global.spr_symbols_cln_1);
	meu_indice = (meu_indice - 1 + total) mod total;
	sprite_index = global.spr_symbols_cln_1[meu_indice];
}

function scr_motion_blur()
{
	fx_set_parameter(_fx_blur, "g_LinearBlurVector", [0,16]);
	fx_set_single_layer(_fx_blur, true);
	layer_set_fx("Symbols_Column_1", _fx_blur);
}
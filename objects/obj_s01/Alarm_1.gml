/// @description Sistema de Loop do Reel


y = ystart;
alarm[0] = 1;

//Efeito de BLUR quando estiver girando.
fx_set_parameter(_fx_blur, "g_LinearBlurVector", [0,16]);
fx_set_single_layer(_fx_blur, true);
layer_set_fx("Symbols_Column_1", _fx_blur);

//Troca de Sprite, seguindo a ordem do ARRAY escolhido no obj_game_controller.
scr_change_sprite_array();


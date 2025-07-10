/// @description Sistema de Loop do Reel


y = ystart;
alarm[0] = 1;

#region BLUR: Não está funcionando junto com o SCISSOR ainda...
//Efeito de BLUR quando estiver girando.
/*scr_motion_blur();*/
#endregion

//Troca de Sprite, seguindo a ordem do ARRAY escolhido no obj_game_controller.
scr_change_sprite_array();


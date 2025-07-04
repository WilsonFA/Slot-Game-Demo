/// @description Sistema de Loop do Reel


y = ystart;
alarm[0] = 1;

sprite_list = array_length(global.spr_symbols);
idx = irandom(sprite_list - 1);
sprite_index = global.spr_symbols[idx];
/// @description Mask Cut do REEL
// Aqui é onde funciona o cut do REEL.

var _scissor = gpu_get_scissor();
gpu_set_scissor(scissor_x,scissor_y,scissor_w,scissor_h);
with(obj_s01){draw_self();}
with(obj_s02){draw_self();}
with(obj_s03){draw_self();}
with(obj_s04){draw_self();}
with(obj_s05){draw_self();}
gpu_set_scissor(_scissor);
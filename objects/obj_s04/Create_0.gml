/// @description Insert description here
// You can write your code in this editor

//Aqui é para o objeto identificar aqual é o objeto de cima dele para as trocas de sprites.
last_sprite = sprite_index;
obj_cima = obj_s03;


x = xstart;
y = ystart;
speed = 0;


//Vai ser usado no Alarm 0 para fazer o loop do objeto.
num_spin = 10;
_i_obj = 0;

//Vai ser usado no Step para parar lentamente o Reel.
stopping = false;
stop_stage = 0;

//Vai fazer o Reel dar uma gatilhada voltando para posição inicial, ao terminar desacelerando.
spin_return = false;




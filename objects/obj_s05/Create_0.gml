/// @description Insert description here
// You can write your code in this editor

y = ystart;
speed = 0;

//Precisa muudar esse valor em cada objeto para definir qual sprite ele vai começar.
meu_indice = 4;

//Vai ser usado no Alarm 0 para fazer o loop do objeto.
num_spin = 50;
_i_obj = 0;
first_spin = true;

//Vai ser usado no Step para parar lentamente o Reel.
stopping = false;
stop_stage = 0;

//Vai fazer o Reel dar uma gatilhada voltando para posição inicial, ao terminar desacelerando.
spin_return = false;


visible = false;

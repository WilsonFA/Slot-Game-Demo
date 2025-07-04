/// @description Verificador de Num. de Loops

scr_reel_spinning();
_i_obj++;

if(_i_obj < num_spin)
{
	alarm[1] = 5;
}

else
{
	stopping = true;
	_i_obj = 0;
}


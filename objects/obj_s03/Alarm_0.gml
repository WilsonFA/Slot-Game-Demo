/// @description Verificador de Num. de Loops

scr_reel_spinning();
_i_obj++;

if(_i_obj < num_spin && first_spin = true)
{
	alarm[1] = 9;
	first_spin = false;
}
else if(_i_obj < num_spin && first_spin = false)
{
	alarm[1] = 4;
}

else
{
	stopping = true;
	_i_obj = 0;
}





/// @description Giro em Loop
/* Aqui você ajusta quantas vezes quer que o REEL gire em looo.
*/

if(spin_count < spin_num)
{
	x = xstart;
	y = ystart;
	scr_reel_spinnig()
	spin_count++;
	alarm[1] = 20;
}
else if (spin_count = spin_num)
{
	x = xstart;
	y = ystart;
	scr_reel_spinnig()
	spin_count = 0;
	alarm[2] = 20;
}

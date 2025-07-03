/// @description Giro parado
/* Aqui, meus jovens, é onde acontece a parada de fato do reel
*/

direction = point_direction(x, y,xstart,ystart)
speed = speed_stopping;

while(speed > 0)
{
	speed -= 0.01;
	if(speed <= 0)
	{
		speed = 0;
		x = xstart;
		y = ystart;
	}
}




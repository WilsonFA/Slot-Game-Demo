/// Draw - obj_reel

for (var row = 0; row < array_length(symbols); row++){
	
	var sym = symbols[row];
	
	var draw_x = x;
	var draw_y = y + row * symbol_size;
	
	// Retângulo placeholder
	draw_set_colour(c_white);
	draw_rectangle(draw_x, draw_y, draw_x + symbol_size, draw_y + symbol_size, false);
	
	// Texto do símbolo
	draw_set_colour(c_black);
	draw_text(draw_x + 10, draw_y + 10, sym);
}
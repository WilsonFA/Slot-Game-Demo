/// Draw - obj_reel

gpu_set_scissor(x, y, symbol_size, symbol_size * global.ROW_COUNT);

for (var row = 0; row < global.ROW_COUNT; row++){
	
	var sym;
	
	if (is_spinning) {
		// símbolo aleatório fake durante giro
		sym = irandom(6) + 1;
	} else {
		sym = symbols[row];
	}
	
	var draw_x = x;
	var draw_y = y + row * symbol_size + spin_offset;
	
	// Retângulo placeholder
	draw_set_colour(c_white);
	draw_rectangle(draw_x, draw_y, draw_x + symbol_size, draw_y + symbol_size, false);
	
	// Texto do símbolo
	draw_set_colour(c_black);
	draw_text(draw_x + 85, draw_y + 85, string(sym));
}

gpu_set_scissor(0,0,display_get_width(),display_get_height());
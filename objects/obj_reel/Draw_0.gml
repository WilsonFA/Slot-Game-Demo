/// Draw Event - obj_reel
/// ------------------------------------------------------------
/// Renderiza apenas a área visível do reel.
/// ------------------------------------------------------------

gpu_set_scissor(x, y, symbol_size, symbol_size * global.ROW_COUNT);

// Desenha o strip real (buffer + visíveis + buffer)
for (var row = 0; row < global.REEL_ROWS_REAL; row++) {

	var sym = symbols[row];

	var draw_x = x;
	var draw_y = y + (row - 1) * symbol_size - spin_offset;

	// desenha somente dentro da área visível
	if (draw_y > y - symbol_size && draw_y < y + symbol_size * global.ROW_COUNT) {

		var spr = get_symbol_sprite(sym);
		if (spr != noone) {
			draw_sprite(spr, 0, draw_x, draw_y);
		}
	}
}

gpu_set_scissor(0, 0, display_get_width(), display_get_height());

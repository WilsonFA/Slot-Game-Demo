/// Step Event - obj_reel
/// Pipeline estável: SPINNING → SLOWING → SNAP → STOPPED

switch (reel_state) {

	// -----------------------------
	// SPINNING (fake / aleatório)
	// -----------------------------
	case "SPINNING":

		spin_offset -= current_speed;

		if (spin_offset <= -symbol_size) {
			spin_offset += symbol_size;

			// gira strip
			for (var i = global.REEL_ROWS_REAL - 1; i > 0; i--) {
				symbols[i] = symbols[i - 1];
			}

			// símbolo novo aleatório
			symbols[0] = irandom(6) + 1;
		}
	break;


	// -----------------------------
	// SLOWING (strip FINAL já injetado)
	// -----------------------------
	case "SLOWING":

		current_speed = max(current_speed - 4, 20);
		spin_offset  -= current_speed;

		if (current_speed <= 20) {
			reel_state = "SNAP";
		}
	break;


	// -----------------------------
	// SNAP (encaixe final)
	// -----------------------------
	case "SNAP":

		spin_offset = lerp(spin_offset, 0, 0.35);

		if (abs(spin_offset) < 0.5) {
			spin_offset = 0;
			reel_state = "STOPPED";
		}
	break;
}

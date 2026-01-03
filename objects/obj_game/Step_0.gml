/// Step Event - obj_game

// GIRO AUTOMÁTICO
if (game_state == GAME_STATE.SPINNING && !stopping_reels) {

	spin_timer++;

	if (spin_timer >= spin_duration) {
		start_stop_sequence();
	}
}


// PARADA EM CASCATA
if (stopping_reels) {

	stop_timer++;

	if (stop_timer >= stop_delay) {

		stop_timer = 0;

		var reel = reels_visual[stop_index];

		// injeta STRIP FINAL ANTES do slowing
		reel.symbols = [];

		for (var s = 0; s < array_length(reel.target_symbols); s++) {
			reel.symbols[s] = reel.target_symbols[s];
		}

		reel.current_speed = reel.spin_speed;
		reel.reel_state    = "SLOWING";

		stop_index++;

		if (stop_index >= array_length(reels_visual)) {
			stopping_reels = false;
			game_state = GAME_STATE.IDLE;
		}
	}
}

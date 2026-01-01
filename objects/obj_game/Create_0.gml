// ESTADOS DO JOGO
enum GAME_STATE {
	IDLE,
	SPINNING,
	SHOW_RESULT
}

game_state = GAME_STATE.IDLE;

// Dados do último spin
last_spin_result = undefined;


// FUNÇÃO DE SPIN (chama o backend)
function start_spin() {
	
	if (game_state != GAME_STATE.IDLE) return;
	
	// Chama o backend
	last_spin_result = backend_spin();
	
	// Muda estado
	game_state = GAME_STATE.SPINNING;
}
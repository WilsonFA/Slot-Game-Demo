switch (game_state) {
	
	case GAME_STATE.IDLE:
	// esperando input
	break;
	
	case GAME_STATE.SPINNING:
	// aqui depois os reels vão avisar quando terminar
	// por enquanto, vamos pular direto pro resultado
	game_state = GAME_STATE.SHOW_RESULT;
	break;
	
	case GAME_STATE.SHOW_RESULT:
	// aqui depois mostraremos wins
	// por enquanto, só volta pro idle
	game_state = GAME_STATE.IDLE;
	break;
}
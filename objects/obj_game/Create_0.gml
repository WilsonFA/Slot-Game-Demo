#region =========================
#region BACKEND / GAME FLOW
#endregion =========================

// -------------------------------
// ESTADOS DO JOGO
// -------------------------------
enum GAME_STATE {
	IDLE,
	SPINNING,
	SHOW_RESULT
}

game_state = GAME_STATE.IDLE;


// -------------------------------
// CONTROLE DE TEMPO DE GIRO
// -------------------------------
spin_timer = 0;
spin_duration = room_speed * 2; // 2 segundos


// -------------------------------
// RESULTADO DO BACKEND
// -------------------------------
last_spin_result = undefined;


// -------------------------------
// FUNÇÃO: INICIAR SPIN
// -------------------------------
function start_spin() {

	if (game_state != GAME_STATE.IDLE) return;

	// chama backend
	last_spin_result = backend_spin();

	// inicia giro dos reels
	for (var i = 0; i < array_length(reels_visual); i++) {

		var reel  = reels_visual[i];
		var final = last_spin_result.reels[i];

		// monta STRIP FINAL (buffer + resultado + buffer)
		reel.target_symbols = [];

		reel.target_symbols[0] = irandom(6) + 1; // buffer topo
		reel.target_symbols[1] = final[0];
		reel.target_symbols[2] = final[1];
		reel.target_symbols[3] = final[2];
		reel.target_symbols[4] = irandom(6) + 1; // buffer base

		// estado de giro
		reel.reel_state    = "SPINNING";
		reel.current_speed = reel.spin_speed;
	}

	spin_timer = 0;
	game_state = GAME_STATE.SPINNING;
}


// -------------------------------
// CONTROLE DE PARADA EM CASCATA
// -------------------------------
stopping_reels = false;
stop_index = 0;
stop_delay = 30;
stop_timer = 0;

function start_stop_sequence() {

	if (stopping_reels) return;

	stopping_reels = true;
	stop_index = 0;
	stop_timer = 0;
}

#endregion



#region =========================
#region FRONTEND / REELS VISUAIS
#endregion =========================

reels_visual = [];

var start_x = 48;
var start_y = 1188;
var spacing = 200;

for (var i = 0; i < global.REEL_COUNT; i++) {

	var r = instance_create_layer(
		start_x + i * spacing,
		start_y,
		"Game_Controller",
		obj_reel
	);

	r.column_index = i;
	array_push(reels_visual, r);
}

#endregion

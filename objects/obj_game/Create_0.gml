
#region Backend

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
	
	// Entrega resultado para os reels visuais
	for (var i = 0; i < 5; i++) {
		var reel = reels_visual[i];
		reel.target_symbols = last_spin_result.reels[i];
		reel.reel_state = "SPINNING";
		reel.current_speed = reel.spin_speed;
	}
	
	// Muda estado
	game_state = GAME_STATE.SPINNING;
}

// Controle de parada em cascata
stopping_reels = false;
stop_index = 0;
stop_delay = 30;  // frames entre cada reel
stop_timer = 0;

function start_stop_sequence() {
	
	
	if (stopping_reels) return;
	
	stopping_reels = true;
	stop_index = 0;
	stop_timer = 0;
}

#endregion

#region Frontend

reels_visual = [];
var start_x = 48;
var start_y = 1188;
var spacing = 200;

for (var i = 0; i < 5; i++){
	
	var r = instance_create_layer(start_x + i * spacing, start_y, "Game_Controller", obj_reel);
	
	r.column_index = i;
	r.symbols = [];
	
	array_push(reels_visual,r);
}




#endregion
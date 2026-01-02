
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
		reel.is_spinning = true;
	}
	
	// Muda estado
	game_state = GAME_STATE.SPINNING;
}

function stop_reels(){
	
	for (var i = 0; i <5; i++){
		var reel = reels_visual[i];
		reel.is_spinning = false;
		reel.symbols = reel.target_symbols;
		reel.spin_offset = 0;
	}
	
	// Muda estado	
	game_state = GAME_STATE.IDLE;
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
	r.symbols = ["s01","s02","s03"];
	
	array_push(reels_visual,r);
}

#endregion

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
		reels_visual[i].symbols = last_spin_result.reels[i];
	}
	
	// Muda estado
	game_state = GAME_STATE.SPINNING;
}

#endregion

#region Frontend

reels_visual = [];

var start_x = 200;
var start_y = 150;
var spacing = 110;

for (var i = 0; i < 5; i++){
	
	var r = instance_create_layer(start_x + i * spacing, start_y, "Game_Controller", obj_reel);
	
	r.column_index = i;
	r.symbols = ["s01","s02","s03"];
	
	array_push(reels_visual,r);
}

#endregion
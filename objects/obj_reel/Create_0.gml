/// Create - obj_reel

column_index = 0;	// Qual coluna (0 a 4)
symbols = [];		// 3 símbolos dessa coluna
symbol_size = 190;	// Tamanho visual (placeholder)

reel_state = "STOPPED"; // SPINNING / SLOWING / SNAP / STOPPED
current_speed = 0;
spin_speed = 40;	// Velocidade do giro
spin_offset = 0;

target_symbols = [];// Símbolos finais vindo do backend
snap_offset = 0;
snap_target = 0;
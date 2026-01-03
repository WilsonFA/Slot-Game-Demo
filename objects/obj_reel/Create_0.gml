/// Create Event - obj_reel
/// ------------------------------------------------------------
/// Um único reel visual da slot machine.
/// Controla giro, desaceleração e parada com padrão de cassino.
/// ------------------------------------------------------------

/* ============================================================
   CONFIGURAÇÃO BÁSICA
   ============================================================ */

column_index = 0;          // Índice da coluna
symbol_size  = 190;        // Altura visual do símbolo (px)


/* ============================================================
   ESTADOS DO REEL
   STOPPED        → parado
   SPINNING       → giro fake (aleatório)
   LAST_SPINNING  → último giro com resultado visível
   SLOWING        → desaceleração real
   SNAP           → encaixe final
   ============================================================ */

reel_state = "STOPPED";


/* ============================================================
   VELOCIDADE
   ============================================================ */

spin_speed    = 50;   // velocidade base
current_speed = 0;    // velocidade atual


/* ============================================================
   OFFSET DE GIRO
   ============================================================ */

spin_offset = 0;


/* ============================================================
   STRIP ATUAL (SEMPRE DESENHADO)
   5 linhas: buffer + 3 visíveis + buffer
   ============================================================ */

symbols = [];

for (var i = 0; i < global.REEL_ROWS_REAL; i++) {
	symbols[i] = irandom(6) + 1;
}


/* ============================================================
   STRIP FINAL (BACKEND)
   ============================================================ */

target_symbols     = [];   // strip final alinhado
last_spin_symbols  = [];   // strip deslocado (resultado vindo)
using_final_strip  = false;


/* ============================================================
   LAST SPIN CONTROL
   ============================================================ */

last_spin_timer    = 0;
last_spin_duration = 15;   // 12–20 frames (sensação cassino)

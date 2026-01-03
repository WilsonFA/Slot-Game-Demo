function get_symbol_sprite(symbol_id){
	switch (symbol_id) {
		case 1: return spr_s01;
		case 2: return spr_s02;
		case 3: return spr_s03;
		case 4: return spr_s04;
		case 5: return spr_s05;
		case 6: return spr_s06;
		case 7: return spr_wild;
		default: return noone;
	}
}
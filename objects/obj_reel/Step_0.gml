switch (reel_state){
	
	case "SPINNING":
		spin_offset += current_speed;
		spin_offset %= symbol_size;
	break;
	
	case "SLOWING":
		current_speed = max(current_speed - 2, 6);
		spin_offset += current_speed;
		spin_offset %= symbol_size;
		
		if(current_speed <= 6) {
			reel_state = "SNAP";
			snap_target = round(spin_offset / symbol_size) * symbol_size;			
		}
	break;
	
	case "SNAP":
		spin_offset = lerp(spin_offset, snap_target, 0.25);
		
		if(abs(spin_offset - snap_target) < 1){
			spin_offset = 0;
			reel_state = "STOPPED";
			symbols = target_symbols;	
		}
	break;
	
	case "STOPPED":
		//nada faz
	break;
}
if (is_spinning) {
	
	spin_offset += spin_speed;
	
	if (spin_offset >= symbol_size){
		spin_offset -= symbol_size;
	}
}
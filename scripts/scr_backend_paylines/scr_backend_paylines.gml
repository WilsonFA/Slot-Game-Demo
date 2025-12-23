function backend_get_paylines(){
	
	return [
		[1,1,1,1,1], // mid
		[0,0,0,0,0], // top
		[2,2,2,2,2], // bot
		[0,1,2,1,0], // zig-zag
		[2,1,0,1,2]  // zig-zag inverted
	]; 
}
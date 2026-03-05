function backend_generate_reels(){
	
	var reels = [];
	
	for (var r = 0; r < global.REEL_COUNT; r++){
		
		reels[r] = [];
		
		for (var row = 0; row < global.ROW_COUNT; row++){
			reels[r][row] = irandom_range(1, global.SYM_WILD);
		}
	}
	
	//reels = [[1,1,1],[2,2,2],[3,3,3],[4,4,4],[5,5,5]];
	
	return reels;
}
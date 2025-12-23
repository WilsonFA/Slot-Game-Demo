function backend_get_payout(symbol, count){
	
	if(count < 3) return 0;
	
	switch (symbol){
		
		case global.SYM_S01:
			return [0,0,100,200,250][count-1];
		
		case global.SYM_S02:
			return [0,0,50,100,150][count-1];
		
		case global.SYM_S03:
			return [0,0,25,50,100][count-1];
		
		case global.SYM_S04:
			return[0,0,10,20,75][count-1];
		
		case global.SYM_S05:
		case global.SYM_S06:
			return [0,0,5,10,50][count-1];
	}
	
	return 0; // Plan B, in case none of the conditions are met.
}
function backend_check_wins(reels){
	
	var paylines = backend_get_paylines();
	var total_win = 0;
	var winning_lines = [];
	
	for (var i = 0; i < array_length(paylines); i++){
	
		var line = paylines[i];
		var first_symbol = reels[0][line[0]];
		var count = 1;
		
		for (var r =1; r < global.REEL_COUNT; r++){
		
			var current = reels[r][line[r]];
			
			if (current == first_symbol) || current == global.ROW_COUNT{
				count++;
			} else{
				break;
			}
		}
		
		var payout = backend_get_payout(first_symbol, count);
		
		if(payout > 0){
			total_win += payout;
			array_push(winning_lines, i);
		}
	}
	
	return{
		win_amount: total_win,
		lines	  :	winning_lines
	};
}
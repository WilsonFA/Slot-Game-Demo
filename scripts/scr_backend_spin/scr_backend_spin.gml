function backend_spin(){

	var reels = backend_generate_reels();
	var win_data = backend_check_wins(reels);
	
	return {
		reels		 : reels,
		win_amount	 : win_data.win_amount,
		winning_lines: win_data.lines 
	};
}
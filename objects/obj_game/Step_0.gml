//Parada em cascata
if(stopping_reels){
	
	stop_timer++;
	
	if(stop_timer >= stop_delay){
		
		stop_timer = 0;
		
		var reel = reels_visual[stop_index];
		
		reel.reel_state = "SLOWING";
		
		stop_index++;
		
		if(stop_index >= array_length(reels_visual)){
		stopping_reels = false;
		game_state = GAME_STATE.IDLE;
		}
	}
}

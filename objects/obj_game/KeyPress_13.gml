// ENTER = STOP
if (keyboard_check_pressed(vk_enter)) {
	if (game_state == GAME_STATE.SPINNING) {
		stop_reels();
	}
}

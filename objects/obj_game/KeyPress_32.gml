// SPACE = START
if (keyboard_check_pressed(vk_space)) {
	if (game_state == GAME_STATE.IDLE) {
		start_spin();
	}
}

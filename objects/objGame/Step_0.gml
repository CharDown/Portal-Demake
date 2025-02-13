if (keyboard_check_pressed(vk_f11)) {
	if (window_get_fullscreen()) {
		window_set_fullscreen(false) 
		return
	}
	if (!window_get_fullscreen()) {
		window_set_fullscreen(true) 
		return
	}
}


if (keyboard_check_pressed(vk_down)) {
	array_push(global.text, mouse_x)
	array_push(global.text, mouse_y)
}

if (keyboard_check_pressed(ord("R"))) game_restart()


global.playerspeed = []
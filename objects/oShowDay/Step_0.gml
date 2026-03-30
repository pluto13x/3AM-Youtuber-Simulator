if keyboard_check_pressed(vk_space)
	start = true

if start {
	if fade == "in" {
		image_alpha += 0.8 * (delta_time / 1000000);
		if image_alpha >= 1 {
			fade = "out";
			start = false;			
		}
	}
	else {
		image_alpha += -0.8 * (delta_time / 1000000);
		if image_alpha <= 0 {
			fade = "in";
			start = false;			
		}
	}
}
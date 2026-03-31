if start {
	if fade == "in" {
		oUpload.disabled = true
		image_alpha += 0.8 * (delta_time / 1000000);
		if image_alpha >= 1 and done == false {
			fade = "out";
			start = false;	
			timer = 1;
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
else {
	if timer > 0 {
		timer -= delta_time / 1000000; // convert microseconds → seconds
	}
	else if fade == "out" {
		start = true;
		oUpload.disabled = false
	}
}

if day > maxdays {
	//room_goto(rScoreScreen)
}
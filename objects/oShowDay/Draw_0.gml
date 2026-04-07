draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
draw_set_font(fAdamantSansProRegular)
if day <= maxdays and gameover == false {
	draw_text(x, y, "Day " + string(day));
}
else if gameover == true and gamedone == false {
	draw_text(x, y, "Game over");
	
	if playedEffect == false {
		audio_play_sound(sePipe, 10, false);
		playedEffect = true
	}
}
else {
	try {
		gameover = true
		if playedEffect == false {
			audio_play_sound(seSuccess, 10, false);
			playedEffect = true
		}
		draw_text(x, y, "Final score: " + string(iStats.subscribers) + " subsribers");
		oGameOver.sprite_index = sSuccess;
		oGameOverText.thetext = "Character cannot be developed in ease and quiet. \n\nOnly through experience of trial and suffering can the soul be strengthened, \n\nvision cleared, \n\nambition inspired \n\nand success achieved. \n\n\n\n - Helen Keller";
	}
	catch (e) {
		show_debug_message("Error: " + string(e));
	}
}
draw_set_alpha(1);
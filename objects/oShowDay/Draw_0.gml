draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
if day <= maxdays and gameover == false {
	draw_text(x, y, "Day " + string(day));
}
else if gameover == true {
	draw_text(x, y, "Game over");
	done = true;
}
else {
	draw_text(x, y, "Final score: " + string(iStats.subscribers) + " subsribers");
	done = true;
}
draw_set_alpha(1);
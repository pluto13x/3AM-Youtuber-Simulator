draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_set_font(fComment);
	draw_text_ext_color(x + 50, y + 90,  comment[idx], 30, 350, textColor, textColor, textColor, textColor, 1);
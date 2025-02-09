draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_set_font(fAdamantSansProRegular);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

if backIdx != -1 { 
	draw_sprite_ext(iThumbnailControl.back[backIdx], image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
if frontIdx != -1 { 
    draw_sprite_ext(iThumbnailControl.front[frontIdx], image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}
if overlayIdx != -1 { 
    draw_sprite_ext(iThumbnailControl.front[frontIdx], image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

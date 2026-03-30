draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);
draw_text(x, y, "Day " + string(day));
draw_set_alpha(1);
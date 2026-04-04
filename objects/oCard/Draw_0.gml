draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);


var _old_halign = draw_get_halign();
var _old_valign = draw_get_valign();

draw_set_font(fCards);
draw_set_valign(fa_top);
draw_set_halign(fa_center);

if idx != -1 {
    draw_text_ext_color(
        x + sprite_width * 0.5,
        y + topMargin,
        iCardControl.cards[idx][$ "title"],
        lineSpacing,
        sprite_width + 200,
        textColor, textColor, textColor, textColor, 1
    );
}

draw_set_halign(_old_halign);
draw_set_valign(_old_valign);
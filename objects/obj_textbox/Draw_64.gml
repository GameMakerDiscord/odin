/// @desc Render Textbox

draw_sprite(textbox_sprite, 0, x, y);
draw_set_font(obj_odin.font);
draw_set_color(obj_odin.text_color);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_ext(x + 34, y + 3, current_string, 8, 143);
draw_sprite(portrait, 0, x, y - 1);
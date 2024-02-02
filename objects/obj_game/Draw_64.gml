/// @description 

var _scale = 2; //Tamanho dos botões

var _hei = display_get_gui_height();
var _wid = display_get_gui_width();

var _red_x = _wid / 14;
var _red_y = _hei - (_hei / 8);

var _blue_x = _wid - (_wid / 14);
var _blue_y = _hei - (_hei / 8);

var _green_x = _wid / 14;
var _green_y = _hei / 8;

var _yellow_x = _wid - (_wid / 14);
var _yellow_y = _hei / 8;

draw_sprite_ext(spr_red_button, img, _red_x, _red_y, _scale, _scale, 0, c_white, 1);

draw_sprite_ext(spr_blue_button, img, _blue_x, _blue_y, _scale, _scale, 0, c_white, 1);

draw_sprite_ext(spr_green_button, img, _green_x, _green_y, -_scale, -_scale, 0, c_white, 1);

draw_sprite_ext(spr_yellow_button, img, _yellow_x, _yellow_y, -_scale, -_scale, 0, c_white, 1);

if keyboard_check_pressed(ord("A")) img += 1;

/// @description Desenhar botões

var _hei = display_get_gui_height(); //Altura da GUI
var _wid = display_get_gui_width(); //Larguta da GUI

//Posição do botão vermelho
var _red_x = _wid / 14;
var _red_y = _hei - (_hei / 8);

//Posição do botão azul
var _blue_x = _wid - (_wid / 14);
var _blue_y = _hei - (_hei / 8)	

//Posição do botão verde
var _green_x = _wid / 14;
var _green_y = _hei / 8;

//Posição do botão amarelo
var _yellow_x = _wid - (_wid / 14);
var _yellow_y = _hei / 8;

//Arrays para usar no loop.
var _buttons = [obj_red_button, obj_blue_button, obj_green_button, obj_yellow_button];
var _bx = [_red_x, _blue_x, _green_x, _yellow_x];
var _by = [_red_y, _blue_y, _green_y, _yellow_y];

//Criar os botões
for (var _i = 0; _i < 4; _i++){
	if !instance_exists(_buttons[_i]){
		instance_create_layer(_bx[_i], _by[_i], "Buttons", _buttons[_i])
	}
}

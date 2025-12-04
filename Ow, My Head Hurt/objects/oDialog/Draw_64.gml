var _dx = 200;
var _dy = gui_h * 0.5;
var _boxw = gui_w * 0.7;
var _boxh = gui_h * 0.4;

draw_sprite_stretched( sTextbox, 0, _dx, _dy, _boxw, _boxh );

_dx += 16;
_dy += 16;


draw_set_font( Font1 );

var _name = messages[current_message].name;
draw_text( _dx, _dy, _name );

_dy += 40;

draw_text_ext( _dx, _dy, draw_message, -1, _boxw - _dx * 2 );
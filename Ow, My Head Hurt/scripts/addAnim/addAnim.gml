//Args
var _cts = argument[0];
var _actor = argument[1];
var _atype = argument[2];
var _data = argument[3];

//array size
var size = array_length(global.ctsAnims, _cts);

//add
global.ctsAnim[ _cts, size] = [ _actor, _atype, _data ];
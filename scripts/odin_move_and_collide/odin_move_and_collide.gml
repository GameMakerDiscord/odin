/// @desc Checks for collisions, allowing for floats as speeds
/// @arg hspd
/// @arg vspd

var _hspd = argument0;
var _vspd = argument1;

// Horizontal check
while (_hspd != 0) {
	var _tick = (abs(_hspd) >= 1) ? 1 * sign(hspd) : _hspd * sign(hspd);
	var _inst = instance_place(x + _tick, y, par_solid);
	if (_inst == noone) {
		x += _tick;
	} else {
		hspd = 0;
		break;
	}
	_hspd -= _tick;
}

// Vertical check
while (_vspd != 0) {
	var _tick = (abs(_vspd) >= 1) ? 1 * sign(vspd) : _vspd * sign(vspd);
	var _inst = instance_place(x, y + _tick, par_solid);
	if (_inst == noone) {
		y += _tick;
	} else {
		vspd = 0;
		break;
	}
	_vspd -= _tick;
}
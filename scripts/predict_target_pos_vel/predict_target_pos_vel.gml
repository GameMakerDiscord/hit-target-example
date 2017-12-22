/// @param ax 
/// @param ay 
/// @param bx 
/// @param by
/// @param ux 
/// @param uy
/// @param initial_velocity 
var _ax = argument0,
	_ay = argument1,
	_bx = argument2,
	_by = argument3,
	_ux = argument4,
	_uy = argument5,
	_initial_velocity = argument6;
	
var _abx = _bx - _ax,
	_aby = _by - _ay;

// Normalize it
var _abmag = sqrt(_abx * _abx + _aby * _aby);
_abx/=_abmag;
_aby/=_abmag;

//Project u onto AB 
var _u_dot_ab = _abx * _ux + _aby * _uy,
	_ujx = _u_dot_ab * _abx,
	_ujy = _u_dot_ab * _aby;

//Subtract uj from u to get ui 
var _uix = _ux - _ujx,
	_uiy = _uy - _ujy;

//Set vi to ui ( for clarity ) 
var _vix = _uix,
	_viy = _uiy;

//Calculate magnitude of bj 
var _vi_mag = sqrt(_vix * _vix + _viy * _viy),
	_vj_mag = sqrt(_initial_velocity * _initial_velocity - _vi_mag * _vi_mag);

var _vjx = _abx * _vj_mag,
	_vjy = _aby * _vj_mag;

return [_vjx + _vix, _vjy + _viy];
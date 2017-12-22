var _dx = target_x - x,
	_dy = target_y - y,
	_len_squared = _dx * _dx + _dy * _dy;

if(_len_squared > 10 * 10){
	var _len = sqrt(_len_squared);
	_dx/=_len;
	_dy/=_len;

	vx = _dx * accel;
	vy = _dy * accel;
}else{
	vx = 0;
	vy = 0;
}

x += vx;
y += vy;

if(mouse_check_button(mb_left)){
	target_x = mouse_x;
	target_y = mouse_y;
}
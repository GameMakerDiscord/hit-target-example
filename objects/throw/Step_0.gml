var _velocity = predict_target_pos_vel(x,y,receive.x,receive.y,receive.vx,receive.vy,velocity);
vx = _velocity[0];
vy = _velocity[1];

if(tick mod 30 == 0 ){
	with(instance_create_depth(x,y,0,ball)){
		vx = other.vx;
		vy = other.vy;
	}
}
++tick;

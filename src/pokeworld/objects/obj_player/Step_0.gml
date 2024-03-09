// Botões
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_down = keyboard_check(vk_down);
var _key_up = keyboard_check(vk_up);
var _sprint = keyboard_check(vk_shift);

// Movimento Horizontal
var _direction_x = _key_right - _key_left;
var _direction_y = _key_down - _key_up;
var _speed_x = 0;
var _speed_y = 0;

var _key_move = min(1, abs(_direction_x)+abs(_direction_y));
var _key_dir = point_direction(0, 0, _direction_x, _direction_y)

if place_meeting(x+sign(_direction_x)*move_speed, y, obj_wall){
	while !place_meeting(x+sign(_direction_x)*move_speed, y, obj_wall){
		_speed_x = _direction_x;
	}
	if place_meeting(x+(sign(_direction_x)*move_speed), y+16, obj_wall){
		y = y - 4;
	}
	if place_meeting(x+(sign(_direction_x)*move_speed), y-16, obj_wall){
		y = y + 4;
	}
} else {
	_speed_x = lengthdir_x(_key_move*move_speed, _key_dir);	
}
if place_meeting(x, y+sign(_direction_y)*move_speed, obj_wall){
	while !place_meeting(x, y+sign(_direction_y)*move_speed, obj_wall){
		_speed_y = _direction_y;	
	}
	if place_meeting(x+16, y+sign(_direction_y)*move_speed, obj_wall){
		x = x - 4;	
	}
	if place_meeting(x-16, y+sign(_direction_y)*move_speed, obj_wall){
		x = x + 4;	
	}
} else {
	_speed_y = lengthdir_y(_key_move*move_speed, _key_dir);
}
//show_debug_message(_speed_x);
//show_debug_message(_speed_y);
x += _speed_x;
y += _speed_y;
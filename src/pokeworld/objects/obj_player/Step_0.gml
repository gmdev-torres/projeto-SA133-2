// MOVIMENTO HORIZONTAL
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);

var _key_down = keyboard_check(vk_down);
var _key_up = keyboard_check(vk_up);

var _direction_y = _key_down - _key_up;
var _direction_x = _key_right - _key_left;
if (_direction_x == 0){
	speed_x = 0	;
} else {
	speed_x = _direction_x * move_speed;
}
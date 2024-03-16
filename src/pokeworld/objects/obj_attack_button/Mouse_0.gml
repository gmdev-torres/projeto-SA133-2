if (obj_player_battle.waiting_player_input){
	var _damage = player_action(obj_player_battle.player_current_pokemon, "attack", obj_player_battle.enemy_pokemon);
	struct_set(obj_player_battle.enemy_pokemon, "hp", struct_get(obj_player_battle.enemy_pokemon, "hp")-_damage);
	obj_player_battle.waiting_player_input = false;
}
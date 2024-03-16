// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_pokemon(_pokemon_id){
	pokemon = {};
	
	return pokemon;
}

function player_action(_pokemon, _action, _target){
	switch _action{
		case "attack":
			p_poke = struct_get(global.player_inventory, _pokemon);
			return struct_get(p_poke, "atk");
	}
	
	
}

function calculate_levelup(){
	//atk = log2(level*level) * attack_scaling + 4	
}
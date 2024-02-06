/// @description Pulo

//Mudar o estado da slime para o de pulando
with (slime){
	if can_jump == true{
		can_jump = false;
		state = plr_jump;
		image_index = 0;
	}
}

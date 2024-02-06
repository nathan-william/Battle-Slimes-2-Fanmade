function plr_move(){
	//Colisão vertical com o Chão (isso vai parar a gravidade caso o player esteja no chão)
	if place_meeting(x, y + vspd, obj_par_walls){
		while !place_meeting(x, y + sign(vspd), obj_par_walls){
			y += sign(vspd);
		}
		vspd = 0;
		can_jump = true;
		jump_hold_frames = 15;
		
	}else{
		//Caso o player não esteja no chão, então ele entrará no estado de caindo.
		if hold == false state = plr_fall;

	}

	//Colisão horizontal
	if place_meeting(x + hspd, y, obj_par_walls){
		while !place_meeting(x + sign(hspd), y, obj_par_walls){
			x += sign(hspd);
		}
		hspd = -hspd;
	}

	//Direção que o player está olhando
	image_xscale = sign(hspd);
	
	//Fazer o player aparecer na outra borda quando ele encosta em uma borda
	move_wrap(true, true, 64);
	
	//Mover o player
	x += hspd;
	y += vspd;

}

function plr_jump(){
	sprite_index = jump_sprite;
	
	if image_index >= 2 image_speed = 0;
	
	if hold == true and jump_hold_frames > 0{
		vspd = jump_spd;
		jump_hold_frames--;
	}else{
		sprite_index = move_sprite;
		image_speed = 1;
		hold = false;
	}
	
	plr_move();
}

function plr_fall(){
	//Gravidade
	vspd += grav;
	can_jump = false;
	
	plr_move();
	
	//Se o player pode pular, então significa que ele está no chão.
	if can_jump == true{
		state = plr_move;	
	}
}
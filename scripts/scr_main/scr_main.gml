function plr_move(){
	
	//Gravidade
	vspd += grav;

	//Colisão vertical com o Chão (isso vai parar a gravidade caso o player esteja no chão)
	if place_meeting(x, y + vspd, obj_wall){
		while !place_meeting(x, y + sign(vspd), obj_wall){
			y += sign(vspd);
		}
		grounded = true;
		vspd = 0;
	}else{
		grounded = false;
	}


	if place_meeting(x + hspd, y, obj_wall){
		while !place_meeting(x + sign(hspd), y, obj_wall){
			x += sign(hspd);
		}
		hspd = -hspd;
	}

	//Direção que o player está olhando
	image_xscale = sign(hspd);
	
	//Mover o player
	x += hspd;
	y += vspd;

}

function plr_jump(){
	vspd = jump_spd;
	
	plr_move();
}
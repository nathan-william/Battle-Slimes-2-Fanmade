/// @description 

// ===--- Movimento ---===

//Pulo
if keyboard_check_pressed(ord("W")) and grounded == true{
	vspd = jump_spd;
	game_restart();
}

//Gravidade
vspd += grav;

//Limite para a velocidade da queda
vspd = clamp(vspd, jump_spd, 35);

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


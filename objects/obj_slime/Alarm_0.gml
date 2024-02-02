/// @description Ataque

//===--- Ataque ---===

var _bullet = instance_create_layer(x, y, "Instances", obj_bullet); //Criando a bala
_bullet.hspd = hspd * 2; //Velocidade da bala

alarm[0] = 20; //Cooldown do ataque

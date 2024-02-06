/// @description 

// ===--- Movimento ---===

hspd = 3; //Velocidade horizontal
vspd = 0; //Velocidade vertical

jump_spd = -9; //Força do pulo
hold = false; //Usado para verificar se o botão de pulo esta sendo segurado
jump_hold_frames = 55; //Tempo máximo que o botão de pulo pode ser segurado

grav = 0.5; //Força da gravidade

can_jump = false;
// ===--- Ataque ---===

alarm[0] = 20; //O código do ataque está no alarme 0

// ===--- Sprite ---===

jump_sprite = spr_red_slime_jump;
move_sprite = spr_red_slime_move;
//fall_sprite = spr_red_slime_fall;
//stun_sprite = spr_red_slime_stun;

// ===--- Estado ===---

state = plr_move;

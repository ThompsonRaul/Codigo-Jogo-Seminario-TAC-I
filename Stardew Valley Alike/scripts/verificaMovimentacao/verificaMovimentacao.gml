
function verificaMovimentacao(vel){
	
	//declarando checagem de teclas
	esquerda = keyboard_check(vk_left);
	direita = keyboard_check(vk_right);
	cima = keyboard_check(vk_up);
	baixo = keyboard_check(vk_down);
	andando = keyboard_check(vk_control);
	correndo = keyboard_check(vk_shift);
	
	//alterando velocidade
	if(andando or correndo){
		vel = abs((andando*vel_a) - (correndo*vel_c));
	}
	else{vel = vel_n}
		
	
	
	//variáveis de movimentação
	movX = 0;
	movY = 0;
	
	//movimentação pretendida

	movX = (direita - esquerda) * vel;
	if(movX==0){movY = (baixo - cima) * vel;}
	
	//direção em q o player vai olhar
	
	if(movX !=0){
		switch(sign(movX)){
			case 1: 
			dirTomso = dir.direita;
			break;
			
			case -1:
			dirTomso = dir.esquerda;
			break;
			
		}
	}
	else if(movY !=0){
		switch(sign(movY)){
			case 1: 
			dirTomso = dir.baixo;
			break;
			
			case -1:
			dirTomso = dir.cima;
			break;
			
		}
	}
	else{
		dirTomso = -1;
	}
	
	//checagem de colisão pixel perfect
	//Horizontal
	
	if(movX != 0){
		if(place_meeting(x+movX, y, obj_colisao)){
			repeat(abs(movX)){
				if(!place_meeting(x+sign(movX), y, obj_colisao)){
					x+=sign(movX);
				}else{break;}
			}	
			movX = 0;
		}
	}
	
	//Vertical
	
	if(movY != 0){
		if(place_meeting(x, y+movY, obj_colisao)){
			repeat(abs(movY)){
				if(!place_meeting(x, y+sign(movY), obj_colisao)){
					y+=sign(movY);
				}else{break;}
			}	
			movY = 0;
		}
	}
	
	//movimentação executada	
	x += movX;
	y += movY;
}

function verificaMovimentacaoNPC(vel){	

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
	
	//objetos

	
	//movimentação executada	
	x += movX;
	y += movY;
}
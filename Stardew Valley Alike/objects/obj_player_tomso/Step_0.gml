verificaMovimentacao(vel);

	var inst = instance_place(x, y, obj_transicao);
	if (inst != noone and dirTomso == inst.direcaoPlayerAntes){
		with(obj_game){
			if(!fazTransicao){
				salaSpawn = inst.salaAlvo;
				spawnX = inst.alvoX;
				spawnY = inst.alvoY;
				spawnDirecaoPlayer = inst.direcaoPlayerDepois;
				fazTransicao = true;
			}
			
			
		}
	}






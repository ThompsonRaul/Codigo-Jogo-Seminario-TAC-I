debug = false;

guiLargura = display_get_gui_width(); 
guiAltura = display_get_gui_height();

alphaPreto = 0;

salaSpawn = -1;

fazTransicao = false;

spawnX = 0;
spawnY = 0;

spawnDirecaoPlayer = -1;

enum dir {
	direita = 0,
	cima = 90,
	esquerda = 180,
	baixo = 270
}
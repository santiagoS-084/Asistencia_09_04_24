class cangrejo {
  PImage pinzas;
  
  cangrejo(){
     pinzas = loadImage("Scraggy.png");
  }
  void crearC (){
     pinzas = loadImage("Scraggy.png");
  }
  
  void moverC() {
  image(pinzas, dx, 365, 50, 50);
  if (mousePressed) {
    if (mouseButton == LEFT) {
      dx -= 5;
    }
    if (mouseButton == RIGHT) {
      dx += 5;
    }
  }
  if (dx > width) {
    dx = dx - 549;
  }
  if (dx < -50) {
    dx = dx + 549;
  }
}
}

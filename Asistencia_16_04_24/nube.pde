class nube {
  PImage nube;
  int x, n;

  nube() {
    nube = loadImage("nube.png");
    x=225;
    n=1;
  }

  void crearN() {
    image(nube, x, 50, 200, 200);
  }

  void moverN() {
    x = x + n;
     if(x > width -185 || x < -30){
    n= n*-1;
    }
  }
}

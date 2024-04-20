PImage fondo, pinzas;
int dx;
nube Nube; 
cangrejo scraggy;

void setup() {
  size(500, 500);
  dx = 250;
  scraggy=new cangrejo();
  Nube = new nube(); 
  fondo = loadImage("fondo.jpg");
}

void draw() {
  //background(#528EAD);// para cuando desactives el filtro
  background(#51900F); // Fondo con filtro
  tint(#FCD75C, 500);
  image(fondo, 0, 0, width, height - 100);
  Nube.crearN();
  Nube.moverN();
  scraggy.crearC();
  scraggy.moverC();
  ladrillos();
}

void ladrillos() {
  for (float yladrillo = 405; yladrillo < height; yladrillo += 30) {
    for (float xladrillo = 10; xladrillo < width; xladrillo += 25) {
      fill(#F5E297);
      noStroke();
      rect(xladrillo, yladrillo, 6, 5);
      rect(xladrillo + 6, yladrillo + 3.5, 2, 5);
      rect(xladrillo + 5, yladrillo + 7, 7, 2);
      rect(xladrillo - 2, yladrillo + 3.5, 2, 7);
      rect(xladrillo - 15, yladrillo + 10, 15, 2);
    }
  }
}

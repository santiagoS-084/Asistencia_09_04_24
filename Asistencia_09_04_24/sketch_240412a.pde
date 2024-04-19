int DistEntreRect, Alto, Ancho;
PVector CoordenadasRect;

void setup() {
  size(440, 420);
  DistEntreRect = 20;
  Ancho = 40;
   Alto = 20;
  CoordenadasRect = new PVector(DistEntreRect, DistEntreRect);
}

void draw() {
  background(235,235,200);
  DibujarRectangulo();
  
}

void DibujarRectangulo() {
  for (float y = CoordenadasRect.y; y < height; y += (Alto + DistEntreRect)) {
    for (float x = CoordenadasRect.x; x < width; x += (Ancho + DistEntreRect)) {
     rect(x, y, Ancho, Alto);
     fill(255,0,0);
    }
  }
}

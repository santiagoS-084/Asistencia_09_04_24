PImage fondo,nube,pinzas;
int x,n,dx,dl;
PVector ladrillo;
void setup(){
  size(500,500);
  dx=250;
  n=1;
  x=0;
  fondo =loadImage("fondo.jpg");
  nube =loadImage("nube.png");
  pinzas =loadImage("Scraggy.png");
}
void draw(){
  //background(#528EAD);// para cuando desactives el filtro
   background(#51900F); //con filtro
  tint(#FCD75C,500);
  image(fondo,0,0,width,height-100);
  nube();
  Scraggy();
  ladrillos();
}
void nube(){
  for(int i =0 ; i<1; i++){
    image(nube,x,50,200,200);
    x= x+n;
    if(x > width -185 || x < -30){
    n= n*-1;
    }
  }
}
void Scraggy(){
  image(pinzas,dx,365,50,50);
  if(mousePressed){
    if(mouseButton == LEFT){
      dx-=5;
    }
     if(mouseButton == RIGHT){
      dx+=5;
    }
  }
   if(dx>width){
      dx= dx-549;
     }
      if(dx< -50){
      dx= dx+549;
     }
}
void ladrillos(){
  for(float yladrillo = 405; yladrillo <height; yladrillo +=30){
    for(float xladrillo = 10; xladrillo <width; xladrillo +=25){
     // fill(215);
      fill(#F5E297);
      noStroke();
      rect(xladrillo,yladrillo,6,5);
      rect(xladrillo+6,yladrillo+3.5,2,5);
      rect(xladrillo+5,yladrillo+7,7,2);
      rect(xladrillo-2,yladrillo+3.5,2,7);
      rect(xladrillo-15,yladrillo+10,15,2);
    }
  }
}

void setup()
{
  size(800,600);
  background(20,25,60);
  
  for(int i = 0; i < 500; i++) {
  stroke(248,255,1);
  fill(248,255,1);
  
  int centerX = (int)(Math.random() * 800);
  int centerY = (int)(Math.random() * 600) + 30;
  
  circle(centerX,centerY, 2);
}
}
int counter = 0;

void draw() {
  int xCoordinates[] = new int[41];
  int yCoordinates[] = new int[41];
  
if(counter < 5) {
  for(int j = 0; j < 3; j++) {
    for(int i = 0; i < 40; i++) {
      int randomizer = (int)(Math.random()*2);
      int xCoordinate = (int)(Math.random()*700) + 50;
      int yCoordinate = (int)(Math.random()*10) + 15;
      int xRandom = (int)(Math.random() * 15) + 5;
      int yRandom = (int)(Math.random() * 15) + 5;
      frameRate(1);
  
      if(randomizer == 0) {
        strokeWeight(4);
        xCoordinates[0] = xCoordinate;
        yCoordinates[0] = yCoordinate;
        stroke(255,255,0);
        xCoordinate = xCoordinates[i];
        yCoordinate = yCoordinates[i];
        line(xCoordinate, yCoordinate, xCoordinate - xRandom, yCoordinate + yRandom);
        xCoordinates[i + 1] = xCoordinate - xRandom;
        yCoordinates[i + 1] = yCoordinate + yRandom;
    }
      if(randomizer == 1) {
        strokeWeight(4);
        xCoordinates[0] = xCoordinate;
        yCoordinates[0] = yCoordinate;
        stroke(255,255,0);
        xCoordinate = xCoordinates[i];
        yCoordinate = yCoordinates[i];
        line(xCoordinate, yCoordinate, xCoordinate + xRandom, yCoordinate + yRandom);
        xCoordinates[i + 1] = xCoordinate + xRandom;
        yCoordinates[i + 1] = yCoordinate + yRandom;
    }
   }
  }
  counter += 1;
  
  for(int i = 0; i <400; i++) {
   int xCoordinate = (int)(Math.random()*801);
   int yCoordinate = (int)(Math.random()* 30) + 10;
   int radius = (int)(Math.random()*100);
   fill(105);
   ellipse(xCoordinate,yCoordinate,radius,radius);
   noStroke(); 
  }
  

 } 
}

void mousePressed() {

}




   

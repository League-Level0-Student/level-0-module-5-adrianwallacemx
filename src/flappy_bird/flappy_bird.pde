int birdX = 100;
int birdY = 100;
int fallSpeed = 0;
int gravity = 1;
int pipeX = 400;
int pipeY = 0;
int pipeA = 400;
int pipeB = 200;
int pipeGap = 200;
 int upperPipeHeight = (int) random(100, 400); 
void setup(){
  size(600,600);
  
}

void draw(){
  background(#FC1414);
fill(#14FC73);
stroke(#1421FC);
ellipse(birdX, birdY, 50, 50);

fill(#1421FC);
rect(pipeX, pipeY, 50, upperPipeHeight);
rect(pipeA, upperPipeHeight + pipeGap, 50, height);
pipeX -= 3;
pipeA -= 3;
if(pipeX < -50){
  pipeX = width; 
  upperPipeHeight = (int) random(100, 400); 
  if(pipeA < -50){
    pipeA = width;
}
}
fallSpeed += gravity;
birdY += fallSpeed;
}

void mousePressed(){
  fallSpeed = -15;
}

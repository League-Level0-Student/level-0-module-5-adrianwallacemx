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
int groundA = 550;
int score = 0;
boolean gameOver = false;

void setup() {
  size(600, 600);
}

void draw() {

  if (gameOver == false) {
    background(#FC1414);

    fill(255);
    textSize(20);
    text("Score: " + score, 100, 100);     

    fill(#14FC73);
    stroke(#1421FC);
    ellipse(birdX, birdY, 50, 50);

    fill(#1421FC);
    rect(pipeX, pipeY, 50, upperPipeHeight);
    rect(pipeX, upperPipeHeight + pipeGap, 50, height);
    rect(0, groundA, width, height - groundA); 
    pipeX -= 3;
    pipeA -= 3;
    if (pipeX < -50) {
      score ++;
      pipeX = width; 
      upperPipeHeight = (int) random(100, 400); 
      if (pipeA < -50) {
        pipeA = width;
      }
    }

    boolean isMyBirdCollidingWithPipe = intersectsPipes();
    if ( birdY > groundA) {
      isMyBirdCollidingWithPipe = true;
    }
    if (isMyBirdCollidingWithPipe == true) {
      gameOver = true;
    }

    fallSpeed += gravity;
    birdY += fallSpeed;
  } else {
    background(0);

    textSize(40);
    fill(255, 0, 0);
    text("Game Over", 100, 100);

    if (mousePressed) {
      gameOver = false; 
      birdX = 100;
      birdY = 100;
      pipeX = width;
      upperPipeHeight = (int) random(100, 400); 
    }
  }
}

void mousePressed() {
  fallSpeed = -15;
}

boolean intersectsPipes() { 
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+50)) {
    return true;
  } else if (birdY>upperPipeHeight + pipeGap && birdX > pipeX && birdX < (pipeX+50)) {
    return true;
  } else { 
    return false;
  }
}

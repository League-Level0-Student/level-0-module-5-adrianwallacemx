int y = 100;
int x = 100;
int speed = 7;
int score=1;
void setup() {
  size(500, 500);
}

void draw() {

  background(359, 127, 234);
  fill(359, 127, 234);
  stroke(359, 127, 234);
  fill(0, 0, 255);
  ellipse(x, y, 20, 20);
  y = y + speed;
  if (y > height) {
    y = 0; 
    checkCatch(x);
    x = (int)random(width);
  }
  fill(255, 0, 0);
  rect(mouseX, 450, 50, 50);
  println("Your score is now: " + score);

  fill(255, 0, 0);
  textSize(16);
  text("score:"+score, 20, 20);
}

void checkCatch(int x) {
  if (x > mouseX && x < mouseX+100)
    score++;
  else if (score > 0) 
    score--;
}

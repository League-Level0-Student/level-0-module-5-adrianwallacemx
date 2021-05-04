int frogX = 400;
int frogY = 550;

class Car {
  int x;
  int y;
  int size;
  int speed;

  Car(int x, int y, int size, int speed) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.speed = speed;
  }

  void display(){
    fill(0, 255, 0);
    rect(x, y, size, 50);
  }
}

Car toyota = new Car(400, 300, 80, 5);
Car ford = new Car(100, 500, 100, 3);
Car porsche = new Car(300,450,80,5); 
Car lambo = new Car(250,400,80,5);
void setup() {
  size(800, 600);
}

void draw() {

  background(#190CE8);
  ellipse(frogX, frogY, 30, 30);
  fill(#26982D);
  
  toyota.display();
  ford.display();
  porsche.display();
  lambo.display();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogY = frogY - 10;
      if (frogY < 0) {
        frogY = 0;
      }


      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      //Frog Y position goes down
      frogY = frogY + 10;
      if (frogY > height) {
        frogY = height;
      }
    } else if (keyCode == RIGHT)
    {
      //Frog X position goes right
      frogX = frogX + 10;
      if  (frogX > width) {
        frogX = width;
      }
    } else if (keyCode == LEFT)
    {
      //Frog X position goes left
      frogX = frogX - 10;
      if (frogX < 0) {
        frogX = 0;
      }
    }
  }
}

Figure shy;
Figure[]audience = new Figure [20];

int s = second();
int r;


void setup() {

  size(900, 600);
  background(0);

  shy = new Figure(0, 0, 0);

  for (int i = 0; i < audience.length; i++) {
    audience[i] = new Figure(i * 50.0, i * 50.0, i/20.0);
  }
}

void draw() {
  background(0);
  rectMode(CENTER);

  stage();

  for (int i = 0; i < audience.length; i++) {
    
    audience[i].display();
    audience[i].move();
    
  }

  shy.display();
  shy.redden(0, 0);  //
 // shy.move();    //repeat
}
void stage() {
  noStroke();
  fill(152, 127, 118); //beige
  rect(width/2 - 50, height/2, 300, 400);
}

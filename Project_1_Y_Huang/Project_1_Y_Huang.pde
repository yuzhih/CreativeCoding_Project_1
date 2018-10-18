Figure mc;
Figure[]audience = new Figure [30];

int s = second();
int r;

void setup() {
  size(500, 400);
  background(0);

  frameRate(30);
  rectMode(CENTER);

  mc = new Figure(width/2, height/2);

  for (int i = 0; i < audience.length; i++) {
    audience[i] = new Figure(int(random(width)), int(random(230, height)));
  }
}

void draw() {
  background(255);

   translate(width/2, height/2);
   scale(s * 0.6, s * 0.6 );
   translate(-width/2, -height/2);
  //mc.shade(0); 
  mc.redden();
  mc.face();
  //mc.arms();
  
  for (int i = 0; i < audience.length; i++) {
    audience[i].shade(int(random(255)));
  }

  if (s > 50) { 
    s = 50;
  }
}

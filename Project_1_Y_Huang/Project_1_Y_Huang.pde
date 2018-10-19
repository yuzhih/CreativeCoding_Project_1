Figure mc;
Figure[]audience = new Figure [30];

int s;
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
  background(0);
  
  s = second();
  println(s);
  if(s <= 20){
    
  translate(width/2, height/2);
  scale(s * 0.3, s * 0.3);
  translate(-width/2, -height/2); 

  mc.redden();
  mc.face();
  mc.arms();

  for (int i = 0; i < audience.length; i++) {
    audience[i].shade(int(random(255)));
  }
  }
  else{
    
    background(20,179, 220);//light blue
    
  translate(width/2, height/2);
  scale(0.02 *s, 0.02 *s);
  translate(-width/2, -height/2);
  
  mc.unredden();
  //mc.arms(); 
  mc.reverseArms();
  }
  
}

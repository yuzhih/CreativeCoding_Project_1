Figure shy;
Figure[]audience = new Figure [20];

int s = second();

void setup(){
  
 size(600, 400);
 background(0);
 
 shy = new Figure();

  
}

void draw(){
  rectMode(CENTER);
  
  stage();
  
  for (int i = 0; i < audience.length; i++){
   
  // audience[i].sit(); 
    
  }
  
  //shy.display(0, 0);
  shy.redden(0, 0);  //
  shy.move();    //repeat
  
}
void stage(){
  noStroke();
  fill(152, 127, 118);
  rect(width/2, height/2, 200, 400);

}

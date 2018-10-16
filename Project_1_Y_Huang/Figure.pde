class Figure{
  
  float xLoc, yLoc;
  float xSpeed;
  
  Figure(float xLoc_, float yLoc_, float xSpeed_){
    
    xLoc = xLoc_;
    yLoc = yLoc_;
    xSpeed_ = xSpeed;
  }
  
  void display(){ //main character
    stroke(255);
    
    fill(0);
    rect(width/2 + xLoc - 3, height/2 + yLoc + 50, 3, 40); //left leg
    rect(width/2 + xLoc + 3, height/2 + yLoc + 50, 3, 40); //right leg
    rect(width/2 + xLoc, height/2 + yLoc + 20, 10, 50); //body
    ellipse(width/2 + xLoc, height/2 + yLoc, 20, 20); //head
    
  }
  
  void redden(int x, int y){ //where the figure feels embarrassed and turns red
    frameRate(30);
    s = second();
    r = s * 20;
    fill(r, 0, 0);
    while(r > 255){
      r = 0;
    }
    rect(width/2 + x, height/2 + y + 20, 10, 50); 
    ellipse(width/2 + x, height/2 + y, 20, 20);
    
  }
  
  void move(){
   
    xLoc = xLoc + xSpeed;
    if(xLoc > width) {
      xLoc = 450;
    }
    
  }
  
  //void sit(int x, int y){ //for the audience
  
  //  stroke(255);
  //  fill(0);
  //  rect(width/2 + x, height/2 + y + 20, 10, 50); //body
  //  ellipse(width/2 + x, height/2 + y, 20, 20); //head
  //  rect(width/2 - 3, height/2 + 50, 3, 40); //left leg
  //  rect(width/2 + 3, height/2 + 50, 3, 40); //right leg
  
  //}
  
}

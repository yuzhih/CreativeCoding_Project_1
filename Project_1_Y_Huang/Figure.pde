class Figure{
  
  Figure(){
    
  }
  
  void display(int x, int y){
    stroke(255);
    
    fill(0);
    rect(width/2 + x, height/2 + y + 20, 10, 50); 
    ellipse(width/2 + x, height/2 + y, 20, 20);
    
    
  }
  
  void redden(int x, int y){ //where the figure feels embarrassed and turns red
    frameRate(30);
    s = second();
    fill(s * 5, 0, 0);
    rect(width/2 + x, height/2 + y + 20, 10, 50); 
    ellipse(width/2 + x, height/2 + y, 20, 20);
    
  }
  
  void move(){
   
    
  }
  
  void sit(){ //for the audience
  
  
  }
  
}

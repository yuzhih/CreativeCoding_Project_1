class Figure { //<>//

  float xLoc, yLoc;



  Figure(float xLoc_, float yLoc_) {

    xLoc = xLoc_;
    yLoc = yLoc_;
  }

  void display() {

    rect(xLoc - 5, yLoc + 80, 7, 60); //left leg
    rect(xLoc + 5, yLoc + 80, 7, 60); //right leg
    rect(xLoc, yLoc + 40, 18, 50); //body
    ellipse(xLoc, yLoc, 30, 30); //head
  }

  void shade(int c) {
    stroke(255);   
    fill(c);
    display();
  }

  void redden() { 
    s = second();
    r = s * 15;
    fill(r, 0, 0);
    stroke(r, 200, 200);
    if (r > 255) {
      r = 0;     
    }
    display();
    arms();
  }
  
  void arms(){    
    strokeWeight(3);
    
    pushMatrix();
    if(s > 5){      
      s = 5;     
    }
    translate(s, -s * 5);
    line(width/2 - 10, height/2 + 18, width/2 - 10, height/2 + 58);

    popMatrix();
    
    pushMatrix();
    translate(-s, -s * 5);
    line(width/2 + 10, height/2 + 18, width/2 + 10, height/2 + 58);
    if(s > 5){      
      s = 5;     
    }
    popMatrix();

    
  }
  
  void face(){
    strokeWeight(1);
    fill(255);
    ellipse(width/2 - 5, height/2 - 3, 3, 3 - 0.5 * s); //left eye
    ellipse(width/2 + 5, height/2 - 3, 3, 3 - 0.5 * s); //right eye

}
    

}

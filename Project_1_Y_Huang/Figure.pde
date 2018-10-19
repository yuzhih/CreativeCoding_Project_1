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
    r = 50 + s * 15;
    fill(r, 0, 0);
    
    if (r > 225) {
      r = 0;     
    }
    display();
  }
  
  void arms(){   
    pushMatrix();
    strokeWeight(3);
    stroke(255);
    
    pushMatrix();
    s = second();
    
    if(s > 5){      
      s = 5;     
    }
    translate(s, -s * 5);
    line(width/2 - 10, height/2 + 18, width/2 - 10, height/2 + 58);

    popMatrix();
    
    pushMatrix();
    s = second();
    if(s > 5){      
      s = 5;     
    }
    translate(-s, -s * 5);
    line(width/2 + 10, height/2 + 18, width/2 + 10, height/2 + 58);

    popMatrix();

   popMatrix(); 
  }
  
  void face(){
    noStroke();
    fill(255);
    if(s > 5){     
      s = 5;     
    }
    ellipse(width/2 - 5, height/2 - 3, 3, 4 - 0.3 * s); //left eye
    ellipse(width/2 + 5, height/2 - 3, 3, 4 - 0.3 * s); //right eye
    

}

 void reverseArms(){   
    pushMatrix();
    strokeWeight(3);
    stroke(255);
    
    pushMatrix();
    s = second();
    
    if(s > 25){      
      s = 25;     
    }
    translate(-s/5, s);
    line(width/2 - 10, height/2, width/2 - 10, height/2 + 40);

    popMatrix();
    
    pushMatrix();
    s = second();
    if(s > 25){      
      s = 25;     
    }
    translate(s/5, s);
    line(width/2 + 10, height/2, width/2 + 10, height/2 + 40);
    popMatrix();

   popMatrix(); 
  }
    
    void unredden() { 
    s = second();
    r = 50 + s * 15;
    fill(r);    
    //face();
    display();
  }

}

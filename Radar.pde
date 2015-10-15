class Radar {
  
  color c;
  int centx,centy,xdirection,ydirection;
  float xpos,ypos,xspeed,yspeed;
  
  Radar(color paintColor, int centX, int centY, float xSpeed, float ySpeed, int xDirection, int yDirection){
    c = paintColor;
    centx = centX;
    centy = centY;
    xspeed = xSpeed;
    yspeed = ySpeed;
    xdirection = xDirection;
    ydirection = yDirection;
  }
  
  void display(){
    stroke(c);
    line(centx,centy,xpos,ypos);
  }
  
  void move(){
    xpos = xpos + (xspeed * xdirection);
    ypos = ypos + (yspeed * ydirection);
    
    if (xpos > width || xpos < 0) {
    xdirection *= -1;
    }
    if (ypos > height || ypos < 0) {
      ydirection *= -1;
    }
  }
}
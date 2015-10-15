Radar thisRadar,thatRadar,theRadar;

color one = color(int(random(255)),int(random(255)),int(random(255)));
color two = color(int(random(255)),int(random(255)),int(random(255)));
color three = color(int(random(255)),int(random(255)),int(random(255)));

int counter = 0;

void setup() {
  size(640,360);
  colorMode(RGB);
  background(0,0,0);
  frameRate(30);//radar(color,int centerX,int centerY,float Xspeed,float Yspeed,int rise,int run)
  thisRadar = new Radar(one, int(random(width)), int(random(height)), 2.4, 2.8, int(random(20)), int(random(20)));
  thatRadar = new Radar(two, int(random(width)), int(random(height)), 2.4, 2.8, int(random(20)), int(random(20)));
  theRadar  = new Radar(three, int(random(width)), int(random(height)), 2.4, 2.8, int(random(20)), int(random(20)));
  System.out.println("one:" + red(one) + "," + green(one) + "," + blue(one));
  System.out.println("two:" + red(two) + "," + green(two) + "," + blue(two));
  System.out.println("three:" + red(three) + "," + green(three) + "," + blue(three));
}

void draw() {
  //background(0,0,0);
  thisRadar.move();
  thisRadar.display();
  thatRadar.move();
  thatRadar.display();
  theRadar.move();
  theRadar.display();
  
  counter++;
  if(counter >= 200) {
    background(0,0,0);
    counter = 0;
  }
}
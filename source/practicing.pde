/*float spin = 0.0;

void setup() {
  size(640, 360, P3D);
  noStroke();
}

void draw() {
  background(51);
  
  if (!mousePressed) {
    lights();
  }
  
  spin += 0.01;
  
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateX(PI/9);
  rotateY(PI/5 + spin);
  box(150);
  popMatrix();
}*/


Maxim maxim;
AudioPlayer player;

void setup() {
maxim = new Maxim(this);
player=maxim.loadFile("beat.wav");
player.setLooping(false);

size(1027,768);
background(0,150,0);

}

float a,b,c;
void draw() {
  

    if(mousePressed) {
    
      strokeWeight(5);
   line(mouseX,mouseY,pmouseX,pmouseY);
   
   player.play();
   player.speed(random(mouseX,mouseX));
      
    }



}

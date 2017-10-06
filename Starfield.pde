Particle[] aBunch = new Particle[500];
void setup(){
  size(500,500);
  for (int i = 0; i < 498; i++){
   aBunch[i] = new Normal(); 
  }
   aBunch[498] = new Oddball(); 
  aBunch[499] = new JumboParticle();
}
void draw(){
    fill(0,0,0,50);
    rect(0,0,width,height);
    for (int i = 0; i < aBunch.length; i++){
    aBunch[i].move();
    aBunch[i].show();    
  }
}
class Normal implements Particle{
	double dX, dY, dSpeed, myDir;
  int myColor;
  Normal() {
    dSpeed = Math.random() * 5;
    dX = 250;
    dY = 250;
    myDir = Math.random() * Math.PI * 2;
    myColor = color((float)((Math.random() * 255)), (float)((Math.random() * 255)), (float)((Math.random() * 255)));
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float)(dX),(float)(dY), 10,10);
  }
  public void move(){
    dX = dX + Math.cos(myDir) * dSpeed;
    dY = dY + Math.sin(myDir) * dSpeed;
    myDir = myDir + 0.02;
    if (dX > 500 || dY > 500 || dX < 0 || dY < 0){
      dX = 250;
      dY = 250;
      myDir = Math.random() * Math.PI * 2;
      myColor = color((float)((Math.random() * 255)), (float)((Math.random() * 255)), (float)((Math.random() * 255)));
      
    }
  }
}
interface Particle{
	public void show();
  public void move();
}
class Oddball implements Particle{
  double dX, dY, dSpeed, myDir;
  int myColor;
  Oddball(){
     dSpeed = Math.random() * 5;
    dX = 250;
    dY = 250;
    myDir = Math.random() * Math.PI * 2;
    myColor = color((float)((Math.random() * 255)), (float)((Math.random() * 255)), (float)((Math.random() * 255)));
  }
  
  public void show(){
    fill(myColor);
    noStroke();
    rect((float)(dX),(float)(dY), 50,25);
  }
  public void move(){
     dX = dX + Math.cos(myDir) * dSpeed;
    dY = dY + Math.sin(myDir) * dSpeed;
    myDir = myDir + 0.02;
    if (dX > 500 || dY > 500 || dX < 0 || dY < 0){
      dX = 250;
      dY = 250;
      myDir = Math.random() * Math.PI * 2;
      myColor = color((float)((Math.random() * 255)), (float)((Math.random() * 255)), (float)((Math.random() * 255)));
  }
 }
}

class JumboParticle extends Normal{
	double dX, dY, dSpeed, myDir;
  int myColor;
  JumboParticle() {
    dSpeed = 2;
    dX = 250;
    dY = 250;
    myDir = Math.random() * Math.PI * 2;
    myColor = color((float)((Math.random() * 255)), (float)((Math.random() * 255)), (float)((Math.random() * 255)));
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse((float)(dX),(float)(dY), 80,80);
  }
  public void move(){
    dX = dX + Math.cos(myDir) * dSpeed;
    dY = dY + Math.sin(myDir) * dSpeed;
    myDir = myDir + 0.02;
    if (dX > 500 || dY > 500 || dX < 0 || dY < 0){
      dX = 250;
      dY = 250;
      myDir = Math.random() * Math.PI * 2;
      myColor = color((float)((Math.random() * 255)), (float)((Math.random() * 255)), (float)((Math.random() * 255)));
      
    }
  }
}
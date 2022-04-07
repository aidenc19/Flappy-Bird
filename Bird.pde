public class Bird {
  public PVector pos, vel, grav;
  private final static int SIZE = 20;
  public Brain brain;
  public boolean alive = true;
  
  public Bird() {
    pos = new PVector(20,height/2);
    vel = new PVector(0,0);
    grav = new PVector(0,0.5);
  }
  
  public void show() {
    fill(alive ? #0000FF : #FF0000);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    vel.add(grav);
    pos.add(vel);
    
    if (Math.random() < 0.07) {
       vel.add(0,-7);
    }
  }
}

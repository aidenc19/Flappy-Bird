public class Pipe {
  PVector pos;
  final PVector vel = new PVector(-3,0);
  final static float WIDTH = 20;
  float gap, botHeight, topLength;
  int id;
  
  public Pipe(PVector pos, int id) {
    this.pos = pos;
    botHeight = height * random(0.40);
    gap = height * random(0.30);
    topLength = height - (botHeight + gap);
    this.id = id;
  }
  
  public void update() {
    pos.add(vel);
  }
  
  public void show() {
    fill(0);
    rect(pos.x, pos.y, WIDTH, topLength);
    rect(pos.x, pos.y + topLength + gap, WIDTH, botHeight);
  }
  
  public boolean pipeVsBird(Bird b) {
    return b.pos.x < pos.x + WIDTH
    && b.pos.x + Bird.SIZE > pos.x
    && ( b.pos.y < topLength
    && b.pos.y + Bird.SIZE > pos.y
    || b.pos.y + Bird.SIZE > topLength + gap    
    );
  }
}

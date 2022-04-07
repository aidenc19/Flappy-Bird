Pipe[] pipes = new Pipe[5];
Bird[] birds = new Bird[10];

public void setup() {
  size(1000,600);
  spawnPipes();
  spawnBirds();
}

public void draw() {
  background(220);
  for (int i = 0; i < pipes.length; i++) {
    pipes[i].show(); 
    pipes[i].update();
  }
  for (int i = 0; i < birds.length; i++) {
    birds[i].show(); 
    birds[i].move(); //<>//
    for (int j = 0; j < pipes.length; j++) {
      if (pipes[j].pipeVsBird(birds[i])) {
        birds[i].alive = false;
      }
    }
  }
}

private void spawnPipes() {
  for (int i = 0; i < pipes.length; i++) {
    PVector pos = new PVector(150+100*i,0);
    pipes[i] = new Pipe(pos,i);
  }
}

private void spawnBirds() {
  for (int i = 0; i < birds.length; i++) {
    birds[i] = new Bird();
  }
}

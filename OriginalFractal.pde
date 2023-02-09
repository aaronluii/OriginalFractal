public void setup() {
  size(1920, 1080);
}

public void draw() {
  background(0);
  OriginalFractal(950, 500, 900);
}

public void OriginalFractal(int x, int y, int size) {
    int circles = 0;
    noFill();
    while (circles < 30) {
      strokeWeight(10);
      stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
      ellipse(x, y, size, size);
      circles++;
    }
    
  if (size > 8) {
  OriginalFractal(x - size/2, y, size/2);
  OriginalFractal(x + size/2, y, size/2);
   }
}

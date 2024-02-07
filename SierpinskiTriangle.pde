void settings() {
  size(100, 100);
}

void setup(){
  // Empty
}

void draw(){
  background(255);
  float len = 200;
  float height = len * sqrt(3) / 2;
  sierpinski(0, height, len);
}

void sierpinski(float x, float y, float len) {
  if (len > 20) {
    float height = len * sqrt(3) / 2;
    triangle(x, y, x + len, y, x + len / 2, y - height);

    // Recursive calls
    sierpinski(x, y, len / 2); // Left triangle
    sierpinski(x + len / 2, y, len / 2); // Right triangle
    sierpinski(x + len / 4, y - len * sqrt(3) / 4, len / 2); // Top triangle
  }
}

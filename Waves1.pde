float y, x = 0, t = 0, w = 3, k = 2, d = 0, r = 15, range = 5;
int totalH = 21, totalV = 50;
float f(float a, float b, float c) {
  return r * sin(w*b + k*a + c);
}

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  strokeWeight(2);
  colorMode(HSB);
}

void draw() {
  background(0);
  translate(width/(10*totalH), height/(2*totalV));
  t += 0.01;
  for (int j = 0; j < totalV; j++) {
    for (int i = 0; i < totalH; i+= 2) {
      x = map(i, 0, totalH, 0, range);
      y = f(x, -  t, d + x + j/2) + j * (height/totalV);
      stroke(y % 255, 255,255);
      line(i * width/totalH, y, i * width/totalH + 5*width/(6*totalH), y);
    }
  }
}

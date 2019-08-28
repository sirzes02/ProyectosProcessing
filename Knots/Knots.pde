ArrayList<PVector> vectors = new ArrayList<PVector>();
float angle = 0;
float beta = 0;

void setup() {
  size(600, 400, P3D);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  rotateY(angle);

  float r = 80 * (0.8 + 1.6 * sin(6 * beta));
  float theta = 2 * beta;
  float phi = 0.6 * PI * sin(12 * beta);

  vectors.add(new PVector(r * cos(phi) * cos(theta), r * cos(phi) * sin(theta), r * sin(phi)));

  noFill();
  strokeWeight(8);
  beginShape();
  for (PVector v : vectors) {
    stroke(255, v.mag(), 255);
    vertex(v.x, v.y, v.z);
  }
  endShape();

  beta += 0.01;
  angle += 0.009;
}

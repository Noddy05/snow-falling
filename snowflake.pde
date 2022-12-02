class Snowflake{
  
  float size = 2;
  float x, y, z;
  float startX;
  float gravity = 0.001;
  PVector acceleration = new PVector();
  PVector velocity = new PVector();
  
  Snowflake(float x, float y){
    size = random(5, 10);
    this.x = x;
    this.y = y;
    z = random(0, 16 * 16);
    startX = x;
  }
  
  void update(){
    velocity.y += gravity;
    x = sin((y + z * 20) / 50) * 4 + startX;
    y += min(velocity.y * (y + 120) / 120, 0.9);
    fill(255);
    pushMatrix();
    translate(int(x) - size / 2, int(y) - size / 2);
    rotate(z);
    image(sprites[int(z)], size, size);
    popMatrix();
  }
}

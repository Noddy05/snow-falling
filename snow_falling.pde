float xOffset = 0;
ArrayList<Snowflake> snowflakes = new ArrayList<Snowflake>();
PImage spriteSheet;
PImage[] sprites = new PImage[16 * 16];

int spawnDelay = 5;
void setup() {
  size(400, 400);
  spriteSheet = loadImage("f32.png");
  for (int y = 0; y < 16; y++) {
    for (int x = 0; x < 16; x++) {
      sprites[x + y * 16] = spriteSheet.get(x * 32, y * 32, 32, 32);
    }
  }
}

int tick = 0;
void draw() {
  tick++;
  if(tick % spawnDelay == 0)
    snowflakes.add(new Snowflake(random(-50, width + 50), random(-120, -32)));
  xOffset += 0.01;
  background(30);
  for (Snowflake snowflake : snowflakes) {
    snowflake.update();
  }
}

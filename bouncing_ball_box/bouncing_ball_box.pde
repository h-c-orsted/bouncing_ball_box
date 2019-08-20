float xBall = 80, yBall = 60, diameterBall = 20;
float xBallDirection = 3, yBallDirection = 4;
float xSquare = 30, ySquare = 30, widthSquare = 440;

void setup() {
  size(500, 500);
}

void draw() {
  clear(); 
  background(204, 204, 204);
  
  xSquare += 0.15;
  ySquare += 0.15;
  widthSquare -= 0.3;
  
  // Create the box that the ball will bounce on
  fill(204, 204, 204);
  square(xSquare, ySquare, widthSquare);


  xBall += xBallDirection;
  yBall += yBallDirection;

  if (xBall + 0.5 * diameterBall >= widthSquare + xSquare) {
    xBallDirection = -4 + random(2);
  }

  if (yBall + 0.5*diameterBall >= widthSquare + ySquare) {
    yBallDirection = -4 + random(2);
  }
  
  if (yBall - 0.5 * diameterBall <= ySquare) {
    yBallDirection = 4 - random(2);
  }
  
  if (xBall - 0.5 * diameterBall <= xSquare) {
    xBallDirection = 4 - random(2);  
  }

  fill(255, 255, 255);
  circle(xBall, yBall, diameterBall);
}

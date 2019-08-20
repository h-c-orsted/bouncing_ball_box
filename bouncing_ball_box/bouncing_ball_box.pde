float ballsXPositionOnTheScreen = 80, ballsYPositionOnTheScreen = 60, ballsWidthAndHeightWhichIsTheSameAsDiameter = 20;
float directionOfTheBallOnTheXAxis = 3, directionOfTheBallOnTheYAxis = 4;
float squareXPositionOnTheScreen = 30, squaresYPositionOnTheScreen = 30, squareWidthAndHeightInOneVariableAsTheBoxIsMadeFromAPerfectSquare = 440;

void setup() {
  size(500, 500);
}

void draw() {
  // Clear everything and fill background
  clear(); 
  background(204, 204, 204);
  
  // Make the box smaller every frame
  squareXPositionOnTheScreen += 0.15;
  squaresYPositionOnTheScreen += 0.15;
  squareWidthAndHeightInOneVariableAsTheBoxIsMadeFromAPerfectSquare -= 0.3;
  
  // Create the box that the ball will bounce on
  fill(204, 204, 204);
  square(squareXPositionOnTheScreen, squaresYPositionOnTheScreen, squareWidthAndHeightInOneVariableAsTheBoxIsMadeFromAPerfectSquare);

  // Add the direction to each coordinate (the direction can be positive or negative)
  ballsXPositionOnTheScreen += directionOfTheBallOnTheXAxis;
  ballsYPositionOnTheScreen += directionOfTheBallOnTheYAxis;

  // Handlers for the edges of the box
  if (ballsXPositionOnTheScreen + 0.5 * ballsWidthAndHeightWhichIsTheSameAsDiameter >= squareWidthAndHeightInOneVariableAsTheBoxIsMadeFromAPerfectSquare + squareXPositionOnTheScreen) {
    directionOfTheBallOnTheXAxis = -4 + random(2);
  }

  if (ballsYPositionOnTheScreen + 0.5*ballsWidthAndHeightWhichIsTheSameAsDiameter >= squareWidthAndHeightInOneVariableAsTheBoxIsMadeFromAPerfectSquare + squaresYPositionOnTheScreen) {
    directionOfTheBallOnTheYAxis = -4 + random(2);
  }
  
  if (ballsYPositionOnTheScreen - 0.5 * ballsWidthAndHeightWhichIsTheSameAsDiameter <= squaresYPositionOnTheScreen) {
    directionOfTheBallOnTheYAxis = 4 - random(2);
  }
  
  if (ballsXPositionOnTheScreen - 0.5 * ballsWidthAndHeightWhichIsTheSameAsDiameter <= squareXPositionOnTheScreen) {
    directionOfTheBallOnTheXAxis = 4 - random(2);  
  }

  // Define fill and create the ball
  fill(255, 255, 255);
  circle(ballsXPositionOnTheScreen, ballsYPositionOnTheScreen, ballsWidthAndHeightWhichIsTheSameAsDiameter);
}

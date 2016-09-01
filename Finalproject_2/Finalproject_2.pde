// RULES
// Click to start the ball's movement
// The object of the game is to get rid of all the bricks by getting the ball to hit them
// Use the paddle to hit the ball
// If the ball falls below the paddle, you lose
// If you get rid of all the bricks, you win!
// CHALLENGE: Decrease the size of the paddle by editing the variable "paddleWidth" in line 32



// DATA: INT & BOOLEAN for PADDLE & BALL
// Where the ball is
int xPosition = 0;
int yPosition = 0;

// General ball information
int ballRadius = 15;
boolean ballExistence = true;
boolean paddleExistence = true;

// Ball color
float red = 175;
float green = 75;
float blue = 220;

// True/false statement for starting the program
boolean ballMoving = false;

// Paddle width for bouncing
int paddleWidth = 80;

// Direction to get the ball to move
int xDirection = 4;
int yDirection = -4;  



// DATA: INT & BOOLEAN for BRICKS
int brickHeight = 50;
int brickStartY = 0;
int brickWidth = 75;



// BALL CLASS
public class Ball {
  void bounce() {
    // Draw ball
    if (ballExistence == true) {
      fill(red, green, blue);
      ellipse(xPosition, yPosition, ballRadius*2, ballRadius*2);
    }

    // Get the ball to move and start on the paddle
    if (ballMoving) {
      xPosition = xPosition + xDirection;
      yPosition = yPosition + yDirection;
    } else {
      xPosition = mouseX;
      yPosition = 520;
    }

    // Get the ball to bounce and change direction
    if (yPosition <= 15) {
      yDirection = -yDirection;
      red = random(255);
      green = random(255);
      blue = random(255);
    } 
    if (xPosition <= 15) {
      xDirection = -xDirection;
      red = random(255);
      green = random(255);
      blue = random(255);
    } 
    if (xPosition >= 585) {
      xDirection = -xDirection;
      red = random(255);
      green = random(255);
      blue = random(255);
    }

    // Bounce off paddle 
    if (yPosition >= 520 && yPosition < 532 && xPosition >= mouseX - paddleWidth/2 && xPosition <= mouseX + paddleWidth/2) {
      yDirection = -yDirection;
      red = random(255);
      green = random(255);
      blue = random(255);
    }

    // When the boll drops below the paddle
    if (yPosition >= 600) {
      ballMoving = false;
    }
  }
};



// BRICK CLASS
public class Brick {
  void hit() {
    // Brick array
    Boolean[]brickArray;
    brickArray = new Boolean[9];
    brickArray[0] = true;
    brickArray[1] = true;
    brickArray[2] = true;
    brickArray[3] = true;
    brickArray[4] = true;
    brickArray[5] = true;
    brickArray[6] = true;
    brickArray[7] = true;
    brickArray[8] = true;

    for (int i = 0; i < 9; i++) {
     if (yPosition - ballRadius <= brickHeight && xPosition + ballRadius >= i*brickWidth && xPosition - ballRadius <= (i+1)*brickWidth) {
         brickArray[i] = false;
         yDirection = -yDirection;
         break;
     } if (brickArray[i] == true) {
         fill(i*25);
         rect((i-1)*75, brickStartY, brickWidth, brickHeight);
       }
    } 
    
    //int i = 0; 
    //do {
    //  if (yPosition - ballRadius <= brickHeight && xPosition + ballRadius >= i*brickWidth && xPosition - ballRadius <= (i+1)*brickWidth) {
    //if (xPosition + ballRadius >= i*brickWidth && xPosition - ballRadius <= (i+1)*brickWidth) {
    //      brickArray[i] = false;
    //      yDirection = -yDirection;
    //      break;
         // red = random(255);
         // green = random(255);
         // blue = random(255);
    //  } if (brickArray[i] == true) {
    //      fill(i*25);
    //      rect((i-1)*75, brickStartY, brickWidth, brickHeight);
    //  }
    //  } while (i < 9);
  }
};






// INITIALIZING THE CLASS
Ball myBall;
Brick myBrick;



// SETTING UP THE PROGRAM and ADDING CONSTRUCTORS
void setup () {
  size(600, 600);
  smooth();
  myBall = new Ball();
  myBrick = new Brick();
};



// ADDING THE TRAIL, CARRYING OUT FUNCTIONALITIES, DRAWING THE PADDLE, etc.
void draw () {
  noStroke();
  fill(190, 250, 255, 100);
  rect(0, 0, 600, 600);
  myBall.bounce();
  myBrick.hit();
  // Draw paddle
  if (paddleExistence == true) {
    fill(5, 0, 200);
    rect(mouseX - 40, 535, 80, 12);
  }
  if (ballMoving == false) {
    red = 175;
    green = 75;
    blue = 220;
  }
};



// STARTING THE GAME WHEN THE MOUSE IS CLICKED
void mouseClicked () {
  ballMoving = true;
};
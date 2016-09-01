// BRICK BREAKER //

// RULES
  // Click to start the ball's movement
  // The object of the game is to get rid of all the bricks by getting the ball to hit them
  // Use the paddle to hit the ball
  // If the ball falls below the paddle, you lose a life
  // After losing all your lives, you lose
  // If you get rid of all the bricks, you win!
  // CHALLENGE: Decrease the size of the paddle by editing the variable "paddleWidth" in line 33



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
  int yDirection = 4;  
  
  int lives = 4;


// DATA: INT & BOOLEAN for BRICKS
  int brickHeight = 50;
  int brickStartY = 0;
  int brickWidth = 75;
  boolean brick1 = true;
  boolean brick2 = true;
  boolean brick3 = true;
  boolean brick4 = true;
  boolean brick5 = true;
  boolean brick6 = true;
  boolean brick7 = true;
  boolean brick8 = true;
  boolean brick9 = true;
  boolean brick10 = true;
  boolean brick11 = true;
  boolean brick12 = true;
  boolean brick13 = true;
  boolean brick14 = true;
  boolean brick15 = true;
  boolean brick16 = true;



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

    // Subtracting lives
    if (yPosition >= 600) {
        lives = lives - 1;
        ballMoving = false;
    }
    // Customize text
      textSize(20);
      fill(0);
      text("Lives: " + lives, 20, 580);
      
    // When you die...
    if (lives == 0) {
      ballMoving = false;
      textSize(50);
      fill(0);
      text("YOU LOSE!", 185, 290);
    }
  }
};



// BRICK CLASS
public class Brick {
  void hit() {
    // BRICK 1
    // If the brick boolean is true...
    if (brick1 == true) {
      
      // AND If it hits the bottom of the brick(s)...
      if (yPosition - ballRadius < brickHeight) {
        
        // AND If it hits this specific brick (based on the brick's x-position)...
        if (xPosition + ballRadius >= 0 && xPosition - ballRadius <= brickWidth) {
          
          // THEN The brick disappears!
          brick1 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
        
        // BUT If the above does not occur (is false), THEN the brick is drawn
      } 
      if (brick1 == true) {
        fill(255);
        rect(0, brickStartY, brickWidth, brickHeight);
      }
    }
    
    // BRICK 2
    // The same is repeated for all following bricks
    if (brick2 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= brickWidth && xPosition - ballRadius <= 2*brickWidth) {
          brick2 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick2 == true) {
        fill(225);
        rect(75, brickStartY, brickWidth, brickHeight);
      }
    }

    // BRICK 3
    if (brick3 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= 2*brickWidth && xPosition - ballRadius <= 3*brickWidth) {
          brick3 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick3 == true) {
        fill(195);
        rect(150, brickStartY, brickWidth, brickHeight);
      }
    }

    // BRICK 4
    if (brick4 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= 3*brickWidth && xPosition - ballRadius <= 4*brickWidth) {
          brick4 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick4 == true) {
        fill(165);
        rect(225, brickStartY, brickWidth, brickHeight);
      }
    }

    // BRICK 5
    if (brick5 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= 4*brickWidth && xPosition - ballRadius <= 5*brickWidth) {
          brick5 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick5 == true) {
        fill(135);
        rect(300, brickStartY, brickWidth, brickHeight);
      }
    }
    
    // BRICK 6
    if (brick6 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= 5*brickWidth && xPosition - ballRadius <= 6*brickWidth) {
          brick6 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick6 == true) {
        fill(105);
        rect(375, brickStartY, brickWidth, brickHeight);
      }
    }
    
    // BRICK 7
    if (brick7 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= 6*brickWidth && xPosition - ballRadius <= 7*brickWidth) {
          brick7 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick7 == true) {
        fill(75);
        rect(450, brickStartY, brickWidth, brickHeight);
      }
    }
    
    // BRICK 8
    if (brick8 == true) {
      if (yPosition - ballRadius < brickHeight) {
        if (xPosition + ballRadius >= 7*brickWidth && xPosition - ballRadius <= 8*brickWidth) {
          brick8 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick8 == true) {
        fill(45);
        rect(525, brickStartY, brickWidth, brickHeight);
      }
    }
    
    // BRICK 9
    if (brick9 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 0 && xPosition - ballRadius <= brickWidth) {
          brick9 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick9 == true) {
        fill(45);
        rect(0, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 10
    if (brick10 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= brickWidth && xPosition - ballRadius <= 2*brickWidth) {
          brick10 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick10 == true) {
        fill(75);
        rect(75, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 11
    if (brick11 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 2*brickWidth && xPosition - ballRadius <= 3*brickWidth) {
          brick11 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick11 == true) {
        fill(105);
        rect(150, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 12
    if (brick12 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 3*brickWidth && xPosition - ballRadius <= 4*brickWidth) {
          brick12 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick12 == true) {
        fill(135);
        rect(225, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 13
    if (brick13 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 4*brickWidth && xPosition - ballRadius <= 5*brickWidth) {
          brick13 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick13 == true) {
        fill(165);
        rect(300, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 14
    if (brick14 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 5*brickWidth && xPosition - ballRadius <= 6*brickWidth) {
          brick14 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick14 == true) {
        fill(195);
        rect(375, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 15
    if (brick15 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 6*brickWidth && xPosition - ballRadius <= 7*brickWidth) {
          brick15 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick15 == true) {
        fill(225);
        rect(450, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // BRICK 16
    if (brick16 == true) {
      if (yPosition - ballRadius < 2*brickHeight) {
        if (xPosition + ballRadius >= 7*brickWidth && xPosition - ballRadius <= 8*brickWidth) {
          brick16 = false;
          yDirection = -yDirection;
          red = random(255);
          green = random(255);
          blue = random(255);
        }
      } 
      if (brick16 == true) {
        fill(255);
        rect(525, brickStartY + brickHeight, brickWidth, brickHeight);
      }
    }
    
    // Results of all bricks being hit
    if (brick1 == false && brick2 == false && brick3 == false && brick4 == false && brick5 == false && brick6 == false && brick7 == false && brick8 == false) {
      // Customize text
      textSize(50);
      fill(0);
      text("YOU WIN!", 185, 290);
      // Set ball color to original
      red = 175;
      green = 75;
      blue = 220;
      
      // Deleting paddle and ball
      ballExistence = false;
      paddleExistence = false;
      lives = 4;
    }
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
  if (ballMoving == false){
    red = 175;
    green = 75;
    blue = 220;
  }
};



// STARTING THE GAME WHEN THE MOUSE IS CLICKED
void mouseClicked () {
  ballMoving = true;
};
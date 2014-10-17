int location_x = 320;
int location_y = 10;

// var target_y = location_y;

int ball_vx = 0;
int ball_vy = 1;

int canvas_w = 640;
int canvas_h = 480;

int radius = 10;

int paddle_x = 320-50;
int paddle_y = 420;
int paddle_h = 20;
int paddle_w = 100;
int target_x = paddle_x;
int speed = 10;


boolean gameOver = false;

// this is a comment
// setup is called just once
void setup(){
    // set our canvas size
    size(canvas_w,canvas_h);
    // set a yellow background color
    background(255,255,0);
    // set a black fill color
    fill(0,0,0);
    frameRate(30);
}

// draw is called every time we paint the screen
void draw(){
    // draw a circle in the middle of the screen 50 pixel wide and tall
    background(255,255,0);


    if (gameOver){
        text("Game over", 280,240);
        text("Hit R to restart", 280,280);
        
    } else {
        drawBall();
        drawPaddle();

        updateWorld();
        checkCollisions();
    }
}

void updateWorld(){
    
    // update the pad location to smoothly follow the mouse
    paddle_x = paddle_x - (paddle_x - target_x) / speed; 
    
    location_x = location_x + ball_vx*speed;
    location_y = location_y + ball_vy*speed;
    
}

void drawBall(){
    
    ellipse(location_x,location_y,radius*2,radius*2);    
    
}

void drawPaddle(){
    
    rect(paddle_x, paddle_y, paddle_w, paddle_h);
    
}


void checkCollisions(){

    // avoid paddle goes out of the screen
    if (paddle_x < 0){
        paddle_x = 0;
    }
    if (paddle_x + paddle_w > canvas_w){
        paddle_x = canvas_w - paddle_w;
    }
    
    // check if ball hits the paddle
    
    if (location_y > paddle_y && 
        location_x > paddle_x &&
        location_x < paddle_x + paddle_w){
        
        ball_vx = ball_vx + (location_x - paddle_x)/10;
        ball_vy = -1 * ball_vy;
            
        // adjust ball speed
        if (abs(ball_vx) > 1){
            ball_vx = ball_vx / abs(ball_vx);
        }
    }
    

    // avoid the ball goes out of the screen
    // check for collision on the right
    if (location_x + radius > canvas_w){
        location_x = canvas_w - radius;
        ball_vx = -1 * ball_vx;
    }
    // check for collision on the left
    if (location_x - radius < 0){
        location_x = radius;
        ball_vx = -1 * ball_vx;
    }
    // check for collision on the bottom
    if (location_y + radius > canvas_h){
        location_y = canvas_h - radius;
        gameOver = true;
    }
    // check for collision on the top
    if (location_y - radius < 0){
        location_y = radius;
        ball_vy = -1 * ball_vy;
    }
    
}

void keyPressed(){
    if (keyCode == 'R'){
        gameOver = false;
        location_x = 320;
        location_y = 10;
        paddle_x = 320-50;
        ball_vx = 0;
        ball_vy = 1;
    }
    
}

void mouseMoved(){
    target_x = mouseX;
    // target_y = mouseY;
}

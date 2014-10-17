var location_x = 320;
var location_y = 240;

var target_x = location_x;
var target_y = location_y;

var speed = 10;

var canvas_w = 640;
var canvas_h = 480;

// this is a comment
// setup is called just once
void setup(){
    // set our canvas size
    size(canvas_w,canvas_h);
    // set a yellow background color
    background(255,255,0);
    // set a black fill color
    fill(0,0,0);
}

// draw is called every time we paint the screen
void draw(){
    // draw a circle in the middle of the screen 50 pixel wide and tall
    background(255,255,0);
    ellipse(location_x,location_y,50,50);
   
    // update the location to smoothly follow the ball
    location_x = location_x - (location_x - target_x) / speed;
    location_y = location_y - (location_y - target_y) / speed;
 
    
}

void mouseMoved(){
    target_x = mouseX;
    target_y = mouseY;
}
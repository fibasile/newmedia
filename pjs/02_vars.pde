var location_x = 25;
var location_y = 240;
// this is a comment
// setup is called just once
void setup(){
    // set our canvas size
    size(640,480);
    // set a yellow background color
    background(255,255,0);
    // set a black fill color
    fill(0,0,0);
    // how many times draw is invoked per second
    frameRate(10);
}

// draw is called every time we paint the screen
void draw(){
    // draw a circle in the middle of the screen 50 pixel wide and tall
    background(255,255,0);
    ellipse(location_x,location_y,50,50);
    
    // every time we draw, we move the circle to the right
    location_x = location_x + 10;
   
    // if it reaches the right of the screen we start again from the left
    if (location_x > 640){
        location_x = 25;
    }
}


var location_x = 320;
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
}

// draw is called every time we paint the screen
void draw(){
    // draw a circle in the middle of the screen 50 pixel wide and tall
    background(255,255,0);
    ellipse(location_x,location_y,50,50);
   
}

void mousePressed(){
    location_y = location_y - 50;
}

void mouseReleased(){
    location_y = location_y + 50;
}


void keyPressed(){
    if (keyCode == 'R'){
        location_x = 320;
        location_y = 240;
    }
    if (keyCode == LEFT){
        location_x = location_x - 5;
    } 
    if (keyCode == RIGHT) {
        location_x = location_x + 5;
    }    
}
var cat;
// this is a comment
// setup is called just once
void setup(){
    // set our canvas size
    size(640,480);
    // set a yellow background color
    background(255,255,0);
    // set a black fill color
    fill(0,0,0);
    
    cat = loadImage('cat.gif')
}

// draw is called every time we paint the screen
void draw(){

    // set a yellow background color
    background(255,255,0);
    // set a black fill color, black stroke, thin line
    fill(0,0,0);
    stroke(0);
    strokeWeight(1);
    // draw a circle in the middle of the screen 50 pixel wide and tall
    // ellipse(x,y,w,h)    
    ellipse(320,240,50,50);    
    noFill(); // disable fill
    // rect(x,y,w,h)
    rect(10,10,200,200);
    // line(x1,y1,x2,y2)
    stroke(#990000); // set red stroke
    strokeWeight(10); // set 10 px line
    line(400,50,500,150);
    
    image(cat, 300,280, 100,67);
    
    text("Hello Processing", 100, 350);
}

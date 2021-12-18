float mean = -0.41, stddev = 0.62;
float meterToPixel;
Anchor anchor1,anchor2,anchor3,anchor4,anchor5;



void setup(){

    fullScreen();
}
void draw(){
    background(255);
    strokeWeight(16);
    point(mouseX,mouseY);
    metrekare(11,6);
    mean = -0.023*meterToPixel;
    stddev = 0.2*meterToPixel;
    anchor1 = new Anchor(0,0, "0,0");
    anchor2 = new Anchor(11,0, "11,0");
    anchor3 = new Anchor(0,6, "0,6");
    //anchor4 = new Anchor(11,6, "11,6");
    //anchor5 = new Anchor(5,3, "5,3");

    fill(0, 408, 612, 204);

    text((float)mouseX/(float)meterToPixel, mouseX+15, mouseY+25);
    text((float)mouseY/(float)meterToPixel, mouseX+15, mouseY+45);
    noFill();
    
    display();
}
void display(){ 

    //delay(1000);
}


void metrekare(int x, int y){
    float rectSize;
    strokeWeight(1);
    if((990/x)*y > (1835/y)*x){
        rectSize = (1825/x);
        meterToPixel = 1825/x;
        for (int i = 0; i < x; i++) {
            for (int k = 0; k < y; k++) {
                rect(10 + i * (rectSize), 10 + k *(rectSize), rectSize, rectSize);
            }
        }
    }
    else{
        rectSize = (990/y);
        meterToPixel = 990/y;
        for (int i = 0; i < x; i++) {
            for (int k = 0; k < y; k++) {
                rect(10 + i * (rectSize), 10 + k *(rectSize), rectSize, rectSize);
            }
        }
    }
}    
public class Anchor {
    int x;
    int y;
    float r, r_rand;
    String name;

    Anchor(int tempX, int tempY , String tempName) {
        x = tempX;
        y = tempY;
        name = tempName;

        x = (int)(x*meterToPixel + 10);
        y = (int)(y*meterToPixel + 10);
        r = dist(mouseX,mouseY,x,y);
        r_rand = r + (randomGaussian()*stddev) + mean;

        strokeWeight(2);
        line(mouseX,mouseY,x,y);
        stroke(125,10,188);
        strokeWeight(16);
        point(x,y);
        textSize(16);
        stroke(132,58,92);
        fill(0, 408, 612, 204);
        text(name, x+15, y+15);
        text(r/meterToPixel, x+15, y+35);
        noFill();
    }
    float error_distance(){
        return r_rand;
    }
}

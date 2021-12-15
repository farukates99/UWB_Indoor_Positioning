// gaussian icin
float mean = -0.41*166, stddev = 0.62*166;
float error1, error2, error3;
int meterToPixel, anchorCount=0;
int[] r;
Anchor anchor1,anchor2,anchor3,anchor4;



void setup(){

    fullScreen();
    noFill();
    metrekare(11,6);
    anchor1 = new Anchor(0,0, "feriha");
    anchor2 = new Anchor(2,3, "feride");
    anchor3 = new Anchor(8,1, "ferhat");
    anchor4 = new Anchor(7,4, "hatçe");


}
void draw(){

    display();
}
void display(){
}


void metrekare(int x, int y){
    int rectSize;
    if((990/x)*y > (1835/y)*x){
        rectSize = floor(1825/x);
        meterToPixel = rectSize;
        for (int i = 0; i < x; i++) {
            for (int k = 0; k < y; k++) {
                rect(10 + i * (rectSize), 10 + k *(rectSize), rectSize, rectSize);
            }
        }
    }
    else{
        rectSize = floor(990/y);
        meterToPixel = rectSize;
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
    String name;



    Anchor(int tempX, int tempY , String tempName) {
        x = tempX;
        y = tempY;
        name = tempName;
        x = x*meterToPixel + 10;
        y = y*meterToPixel + 10;
        stroke(125,10,188);
        strokeWeight(16);
        point(x,y);
        textSize(16);
        stroke(132,58,92);
        fill(0, 408, 612, 204);
        text(name, x+15, y+15);
        noFill();
    }
}

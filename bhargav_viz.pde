color be=0;
color en=125;
color c;
PImage bg;


// Declare MovieMaker object


void setup() {
  size(1920,1080);
  smooth();
  background(0);
  bg=loadImage("us_re_modified.jpg");
 background(bg);

}
PFont f;
float val=0;
float val2=0;
float val3=0;
void draw() {
  background(bg);
  noStroke();
 f = createFont("Arial",16,true);
  float s = TWO_PI * millis()/6000;
  float s2 = TWO_PI * millis()/6000;
  float s3 = TWO_PI * millis()/6000;
  float m = TWO_PI * minute() / 60;
  float h = TWO_PI * ( hour() < 12 ? hour() : hour() - 12) / 12;
 // en=en-1;
// println(s);
 c = color(64,224,208);
 // c= lerpColor(0,125, .33);
 
 //Draw 1
  if(s<=2.05 || val<=4.20){
    if(s>2.05){
      s=2.05;
    }
  drawArc( 320,560,200, c, s );
    
  if(val<=3.10)
  {
  val=val+0.08;
  }
  else
  {
    val=3.17;
  }
  textFont(f,36);
  fill(0);
 text(val,262,577);
 textFont(f,28);
 text("$",257,577);
  }
  // c = color(255,102,0);
   fill(c);
   textFont(f,36);
   text("New Hampshire",200,720);
  //drawArc( 160, 150, m );
  //drawArc( 120, 200, h ); 
  
  //Draw 2
   if(s2<=1.94 || val2<3.21){
     if(s2>1.94){
       s2=1.94;
     }
  drawArc( 960,560,200, c, s2 );
  if(val2<2.8)
  {
  val2=val2+0.08;
  }
  else
  {
    val2=3.00;
  }
  //val=val+1;
  textFont(f,36);
  fill(0);
 text(val2,902,577);
 textFont(f,28);
 text("$",897,577);
  }
   //c = color(255,102,0);
   fill(c);
   textFont(f,36);
   text("Minnesota",880,720);


//Draw 3
   if(s3<=2.05||val3<=3.17){
     if(s3>2.05)
     {
       s3=2.05;
     }
  drawArc( 1600,560,200, c, s3 );
  if(val3<3.10)
  {
   
  val3=val3+0.08;
  }
  else
  {
    val3=3.17;
  }
  //val=val+1;
  textFont(f,36);
  fill(0);
 text(val3,1542,577);
 textFont(f,28);
 text("$",1537,577);
  }
  // c = color(255,102,0);
   fill(c);
   textFont(f,36);
   text("Oregon",1540,720); 
   
   textFont(f,48);
   text("Top 3 states having highest home Internet access",430,300); 
   textFont(f,32);
   text("Cost of a Megabit in US Dollars",730,850);
   saveFrame("frame/####.png");

}

void drawArc( int x, int y,float r, color c, float angle) {
  fill(250); 
  ellipse(x,y,r,r);    
  fill(c);
  arc(x,y,r,r,-PI/2,-PI/2 + angle);
  fill(255);
  ellipse(x,y,r-60,r-60);
}



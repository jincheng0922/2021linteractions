PFont font1,font2;
void setup(){
   size(500,500);
   font1=createFont("標楷體",100);
   textFont(font1);
   font2=createFont("微軟正黑體",100);
}
void draw(){
   background(0);
   text("中文",100,100);
   if(mousePressed)textFont(font2);
   else textFont(font1);
}

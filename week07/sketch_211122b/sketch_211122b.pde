boolean down;
void setup(){
   size(500,300); 
}
void draw(){
   if(mousePressed)down=true;
   else down=false;
   print(down);
   if(down)background(255,0,0);
   else background(0,255,0);
}

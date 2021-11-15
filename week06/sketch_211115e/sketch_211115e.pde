PImage [] img=new PImage[10];
void setup(){
   size(1120,450);
   for(int i=0;i<10;i++)img[i]=loadImage(i+".png");
}
void draw(){
   for(int i=0;i<10;i++){
      int x=i*100,y=0;
      image(img[i],100,100);
   }
}

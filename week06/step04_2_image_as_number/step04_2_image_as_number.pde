//Q: 能不能改用漂亮的圖片, 來顯示數字
//(1) 在 images.google.com 找到10張圖 0...9
//    ex. IconsPng Golden Number 1 Icons PNG
//(2) 存在我們的專案目錄,檔名: 0.png ~ 9.png
//   使用陣列讀進來
PImage [] img = new PImage[10];//0...9
PFont font;
void setup(){
  //size(224*5,225*2);
  size(  1120, 450  );//把全部的圖,都秀出來
  for(int i=0; i<10; i++) img[i]=loadImage(i+".png");
  fill(255);
  font = createFont("標楷體",80);
  textFont(font);
}
void draw(){
  background(#075BB2);
  String hh=nf(hour(),2);
  String mm=nf(minute(),2);
  String ss=nf(second(),2);
  text("現在:"+hh+":"+mm+":"+ss, 50,100);
  text("下課:15:40:00", 50,200);
  
  int now = hour()*60*60 + minute()*60 + second();//總秒數
  int next = 16   *60*60 + 40      *60 + 0;//總秒數
  int remain = next-now;//剩下的時間 (秒數來算)
  if(remain<0) remain += 24*60*60;
  text("剩下:"+remain, 50,300);
  hh = nf(remain/60/60%60, 2);
  mm = nf(remain/60%60, 2);
  ss = nf(remain%60, 2);
  text("剩下:"+hh+":"+mm+":"+ss, 50,400);
  int x=800;
  while(remain>0){
    int n = remain%10;
    remain = remain / 10;
    image( img[n], x,100,100,100);
    x-=100;
  }
}

float big=0,x1,y1,vx1,vy1,x2,y2,vx2,vy2;

boolean Catflying=false,Dogflying=false,Cathit=false,Doghit=false;

int round=0;
PImage img,img2,img3;

void setup(){

  size(500,300);
  img = loadImage("1.png");
  imageMode(CENTER);
  img2 = loadImage("2.png");
  imageMode(CENTER);
  img3 = loadImage("3.jpg");
}

void draw(){

  background(img3);
  image(  img,450,250,125,125);
  image(  img2,50,250,100,100);
  
  fill(255,0,0);rect(0,55,20,30);
  fill(255,0,0);rect(25,55,20,30);
  fill(255,0,0);rect(50,55,20,30);
  fill(255,0,0);rect(425,55,20,30);
  fill(255,0,0);rect(450,55,20,30);
  fill(255,0,0);rect(475,55,20,30);
  fill(0,255,0);rect(0,0,big,50);

  fill(128,128,128);rect(240,150,20,150);
  fill(255,128,64);

  if(mousePressed){

    big++;

  }

  if(Catflying){

     round=1;

     x1+=vx1;y1+=vy1;vy1+=0.98;

     if(Collision1()) fill(255,0);

     else ellipse(x1,y1,30,30);
     if(hitCollision1()) fill(255,0);
     else ellipse(x1,y1,30,30);
  }

  

  if(Dogflying){

     round=0;

     x2+=vx2;y2+=vy2;vy2+=0.98;

     if(Collision2()) fill(255,0);

     else ellipse(x2,y2,30,30);

  }

 

}
boolean hitCollision1(){
  if(x1>450 && x1<500 && y1>250)return true;
  else return false;
}
boolean Collision1(){
  
  if(x1>240 && y1>150 &&x1<260  )return true;

  else return false;

}

boolean Collision2(){
  
  
  if(x2<260 && y2>150 &&x2>240  )return true;

  else return false;

}

void mouseReleased(){



  if(round==0){



     x1=50;y1=250;

     float angle1=atan2(x1-250,y1-50);

     vx1 = cos(angle1)*big/5;vy1=sin(angle1)*big/5;

     Catflying=true;

     Dogflying=false;

  }





  if(round==1){

     x2=450;y2=250;

     float angle2=atan2(x2-250,y2-450);

     vx2 = cos(angle2)*big/5;vy2=-sin(angle2)*big/5;

     Dogflying=true;

     Catflying=false;

  }

  big=0;

}

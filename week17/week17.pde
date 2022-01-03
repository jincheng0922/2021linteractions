import ddf.minim.*;
Minim minim;
AudioPlayer player,player2;



float big=0,x1,y1,vx1,vy1,x2,y2,vx2,vy2;

boolean Catflying=false,Dogflying=false;

int round=0,blood=0,blood1=0,condition;
PImage img,img2,img3,img4,img5,img6;

void setup(){

  size(500,300);
  img = loadImage("1.png");
  imageMode(CENTER);
  img2 = loadImage("2.png");
  imageMode(CENTER);
  img3 = loadImage("3.jpg");
  img4=loadImage("c.png");
  img5=loadImage("b.png");
  imageMode(CENTER);
  img6=loadImage("a.png");
  imageMode(CENTER);
  minim = new Minim(this); //設定好
  player = minim.loadFile("abc.mp3");//音效
  
  
  player.play();
}
boolean testywall1(float a,float b,float c){
  if(b<y1&&y1<c){
    if(x1<a&&a<x1+vx1) return true;
    if(x1+vx1< a&&a<x1) return true;
  }
  return false;  
}

boolean testywall2(float a,float b,float c){
  if(b<y2&&y2<c){
    if(x2<a&&a<x2+vx2) return true;
    if(x2+vx2< a&&a<x2) return true;
  }
  return false;  
}

boolean testxwall1(float a,float b,float c){
  if(b<x1&&x1<c){
    if(y1<a&&a<y1+vy1) return true;
    if(y1+vy1< a&&a<y1) return true;
  }
  return false;  
}
boolean testxwall2(float a,float b,float c){
  if(b<x2&&x2<c){
    if(y2<a&&a<y2+vy2) return true;
    if(y2+vy2< a&&a<y2) return true;
  }
  return false;  
}
void draw(){
  background(img3);
  image(  img,450,250,125,125);

  
  image(  img2,50,250,100,100);
  if(blood1==0){
    fill(255,0,0);rect(0,55,20,30);
    fill(255,0,0);rect(25,55,20,30);
    fill(255,0,0);rect(50,55,20,30);
  }
  if(blood1==1){
    fill(255,0,0);rect(0,55,20,30);
    fill(255,0,0);rect(25,55,20,30);
    fill(199,199,199);rect(50,55,20,30);
  }
  if(blood1==2){
    fill(255,0,0);rect(0,55,20,30);
    fill(199,199,199);rect(25,55,20,30);
    fill(199,199,199);rect(50,55,20,30);
  }
  if(blood1==3){
    fill(199,199,199);rect(0,55,20,30);
    fill(199,199,199);rect(25,55,20,30);
    fill(199,199,199);rect(50,55,20,30);
    condition=1;
  }
  if(blood==0){
    fill(255,0,0);rect(425,55,20,30);
    fill(255,0,0);rect(450,55,20,30);
    fill(255,0,0);rect(475,55,20,30);
  }
  if(blood==1){
    fill(199,199,199);rect(425,55,20,30);
    fill(255,0,0);rect(450,55,20,30);
    fill(255,0,0);rect(475,55,20,30);
  }
  if(blood==2){
    fill(199,199,199);rect(425,55,20,30);
    fill(199,199,199);rect(450,55,20,30);
    fill(255,0,0);rect(475,55,20,30);
  }
  if(blood==3){
    fill(199,199,199);rect(425,55,20,30);
    fill(199,199,199);rect(450,55,20,30);
    fill(199,199,199);rect(475,55,20,30);
    condition=2;
  }
  
  
  
  
  fill(0,255,0);rect(0,0,big,50);

  fill(128,128,128);rect(240,150,20,150);
  if(Catflying){
    if(testywall1(240,150,150+150)==true)Catflying=false;
    else if(testywall1(240+20,150,150+150)==true)Catflying=false;
    else if(testxwall1(150,240,240+20)==true)Catflying=false;
    else if(testxwall1(150+150,240,240+20)==true)Catflying=false;
  }
  if(Dogflying){
    if(testywall2(240,150,150+150)==true)Dogflying=false;
    else if(testywall2(240+20,150,150+150)==true)Dogflying=false;
    else if(testxwall2(150,240,240+20)==true)Dogflying=false;
    else if(testxwall2(150+150,240,240+20)==true)Dogflying=false;
    
  }
  if(condition==1){
    background(img4);
    image(img6,250,150,250,250);
  }
  if(condition==2){
    background(img4);
    image(img5,250,150,250,250);
  }
  fill(255,128,64);
  if(Catflying){
    if(testywall1(375,200,200+125)==true){
      Catflying=false;
      blood++;
    }
    else if(testywall1(375+125,200,200+125)==true){
      Catflying=false;
      blood++;
    }
    else if(testxwall1(200,375,375+125)==true){
      Catflying=false;
      blood++;
    }
    else if(testxwall1(200+125,375,375+125)==true){
      Catflying=false;
      blood++;
    }
  }
  if(Dogflying){
    if(testywall2(25,200,200+100)==true){
      Dogflying=false;
      blood1++;
    }
    else if(testywall2(25+100,200,200+100)==true){
      Dogflying=false;
      blood1++;
    }
    else if(testxwall2(200,25,25+100)==true){
      Dogflying=false;
      blood1++;
    }
    else if(testxwall2(200+100,25,25+100)==true){
      Dogflying=false;
      blood1++;
    }
  }
  if(mousePressed){
    big++;
  }
  if(Catflying){

    round=1;
    x1+=vx1;y1+=vy1;vy1+=0.98;
    
    fill(255,255,0);ellipse(x1,y1,30,30);
    
    
  }

  

  if(Dogflying){

     round=0;
     x2+=vx2;y2+=vy2;vy2+=0.98;
     
     fill(255,255,0);ellipse(x2,y2,30,30);
    
    
  }

 

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

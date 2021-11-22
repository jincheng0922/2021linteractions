float []x;
float []y;
float []vx;
float []vy;
boolean []dead;
int N=20;
void setup(){
   size(500,600); 
   x=new float[N];
   y=new float[N];
   vy=new float[N];
   dead=new boolean[N];
   for(int i=0;i<N;i++){
      x[i]=random(500);
      y[i]=random(100,200);
      vy[i]=random(3,4);
      dead[i]=false;
   }
}
void draw(){
   background(255);
   for(int i=0;i<N;i++){
     if(dist(mouseX,mouseY,x[i],y[i])<=50){
        dead[i]=true; 
     }
     if(dead[i]==true)continue;
     fill(255,255,0);ellipse(x[i],y[i],50,50);
     y[i]=y[i]+vy[i];
     if(y[i]>600)vy[i]=-vy[i];
     if(y[i]<0)vy[i]=-vy[i];
   }
   fill(255,0,0);ellipse(mouseX,mouseY,50,50);
}

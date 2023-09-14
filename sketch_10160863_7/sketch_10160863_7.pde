///this is very big
//中文字
void setup(){
  size(500,500);//視窗大小(寬,高);
  background(255);//背景(紅,綠,黃)
}
void draw()//畫圖 每秒畫60次
{
  if(mousePressed){
  line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY);
}
int w=1;
void keyPressed(){
  if(key=='1')stroke(255,0,0);
  if(key=='2')stroke(0,255,0);
  if(key=='3')stroke(0,0,255);
  if(key=='s'||key=='S') save("output.png");
  if(key=='+') strokeWeight(++w);
  if(key=='-') strokeWeight(--w);
  println(w);
}

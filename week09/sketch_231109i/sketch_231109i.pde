PImage img;
int [][] pos = {{93,491},{247,524},{178,524},{162,490},{152,456},{195,490},
               {228,491},{264,491},{322,456},{298,489},{332,490},{365,490},
               {314,524},{281,524},{356,456},{390,457},{84,457},{187,457},
               {128,491},{221,457},{286,456},{213,524},{119,456},{145,524},
               {254,457},{109,524}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);
  image(img, 0, 600-266);
  fill(255, 0, 0, 128);
  rect(mouseX, mouseY, 28, 30, 5);
  fill(0, 255, 0, 128);
  for(int i =0; i<26; i++){
    if(ID<typing.length() && typing.charAt(0)-'a' == i) rect(pos[i][0], pos[i][1], 28, 30, 5);
    if(pressed[i]) rect(pos[i][0], pos[i][1], 28, 30, 5);
  }
  textSize(50);
  fill(0);
  text(typing, 50, 50);
  fill(255, 0, 0);
  if(ID<typing.length()) text(typed + typing.charAt(ID), 50, 100);
  fill(0);
  text(typed, 50, 100);
}
String typing = "printf is a function";
String typed = "";
int ID = 0;
boolean [] pressed = new boolean[26];
void keyPressed(){
  if(ID<typing.length() && key==typing.charAt(ID)){
      if(key>='a' && key<='z') {
        pressed[key-'a'] = true;
        typed += key;
        ID++;
      }
      else if(key==' '){
        typed += key;
        ID++;
      }
  }
  else {
        background(255, 0, 0);
  }
}
void keyReleased(){
  if(key>='a' && key<='z') pressed[key-'a'] = false;
}
void mousePressed(){
  print(mouseX, mouseY);
}

size(410,410,P3D);
noFill();//如果將顏色填充改成noFill()，會發現三角形的線不是一個封閉曲線
beginShape();
//fill(255,0,0);
vertex(200,0);
//fill(0,255,0);
vertex(0,400);
//fill(0,0,255);
vertex(400,400);
endShape(CLOSE);

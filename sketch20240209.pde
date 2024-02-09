float baseH = 60;
float armL1 = 40;
float armL2 = 40;
float armL3 = 40;
float armL4 = 20;
float armL5 = 40;
float armL6 = 40;
float armL7 = 20;
float armL8 = 15;

float armW1 = 15;
float armW2 = 10;
float armW3 = 5;
float armW4 = 10;
float armW5 = 15;
float armW6 = 5;
float armW7 = 5;
float armW8 = 5;

float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = 0;

float l3 = 0;
float dif = 1.0;


void setup(){
  size(1200, 1200, P3D);
  //background(255);
  
  camera(200, 200, 300, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);

if(mousePressed){
 if(mouseButton == LEFT){  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'e'){
      angle2 = angle2 + dif;
    }
    if(key == 'E'){
      angle2 = angle2 - dif;
    }
    if(key == 'h'){
      l3 = l3 + dif;
    }
    if(key == 'H'){
      l3 = l3 - dif;
    }
    if(key == 'r'){
       angle0 = 0;
       angle1 = 0;
       angle2 = 0;
    }   
   }
  }
 }  

  
if(mousePressed){
 if(mouseButton == RIGHT){  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      angle3 = angle3 + dif;
    }
    if(key == 'S'){
      angle3 = angle3 - dif;
    }
    if(key == 'e'){
      angle4 = angle4 + dif;
    }
    if(key == 'E'){
      angle4 = angle4 - dif;
    }
    if(key == 'h'){
      angle5 = angle5 + 2*dif;
    } 
    if(key == 'H'){
      angle5 = angle5 - 2*dif;
    }
    if(key == 'r'){
       angle0 = 0;
       angle3 = 0;
       angle4 = 0;
    }   
   }
  }
 }    
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(175);
  box(10,10,baseH);
  
  //1st link
  pushMatrix(); 
  rotateZ(radians(angle1));
  translate(0,armL1/2-armW1/2,baseH/2+armW1/2);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(0,armL1-2*armW2,-armW2);
  rotateZ(radians(angle2));  
  //go to center of 2nd joint
  translate(0,armW2,0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(0, armL2-armW2-armW3, -armW3+l3);
  fill(100);
  box(armW3,armW3,armL3);
  popMatrix();
  
  //4nd link
  pushMatrix();
  translate(0, 0, baseH/2+armW1);  
  translate(0,0,armL4/2);
  fill(125);
  box(armW4,armW4,armL4);  
  
  //5st link
  translate(0, 0, armL4/2);  
  rotateY(radians(angle3));
  translate(0,0,armL5/2);
  fill(150);
  box(armW5,armW5,armL5);
  
  //6st link
  translate(0, 0, armL5/2);   
  rotateY(radians(angle4));
  translate(0,0,armL6/2);
  fill(100);
  box(armW6,armW6,armL6);
  
  //腕
  translate(0,0,armL6/2);
  rotateZ(radians(angle5));
  translate(0,0,armW7/2);
  fill(150);
  box(armW7,armL7,armW7);
  pushMatrix();
  translate(0,-armL7/2+armW8/2,armW7/2+armW8/2);
  fill(150);
  box(armW8,armW8,armL8);
  popMatrix();
  pushMatrix();
  translate(0,armL7/2-armW8/2,armW7/2+armW8/2);
  fill(150);
  box(armW8,armW8,armL8);
  popMatrix();
  popMatrix();
}

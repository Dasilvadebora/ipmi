PImage miImagen;

void setup(){
  size(800,400);
  background(185);
}
void draw(){
  background(185);
    miImagen = loadImage("bust.jpg");
  image(miImagen,0,0,400,400);
  
  
  //comienza el dibujo

noStroke();
fill(200,100);
rect(450,20,300,350);

//base
  fill(0);
  rect(506,340,200,200);
  triangle(677,318,610,335,698,346);

//formas

fill(240,200,160);
ellipse(680,177,145,102);

//cuello y hombro
fill(230,190,150);
  beginShape();
  vertex(617,211);
  vertex(714,225);
  vertex(666,274);
  vertex(586,257);
  endShape(CLOSE);
  
  //cabeza
    fill(#1d312e);
  quad(589, 187, 433, 70, 659, 10,729,120); 

  //cara   
  fill(240,200,160);
  quad(591, 184, 618, 216, 756, 229,729,120);
  
  //naris
triangle(730,123,772,178,744,200);
triangle(766,169,736,197,759,228);

  //labios
  
    fill(150, 80, 70);
  arc(755, 199, 18, 10, 0, PI);

//ojo 
  fill(0);
  ellipse(730, 159, 18, 8);
  
   //busto
    fill(240,200,160);
  quad(590, 254, 666, 271, 624,341,510,336);
  
  fill(240,200,160);
  triangle(663,272,640,310,680,325);
  triangle(634,311,640,344,675,313);
  
      //vestido
 fill(#836848);
 arc(602, 337, 138,138 , PI, TWO_PI); 
 
 quad(638,282,668,292,680,323,670,340);
 
  
  fill(#C6BAA0);
 arc(579, 345, 138,138 , PI, TWO_PI); 

 
  
  //ceja
  
  stroke(0);
  line(707,152,731,141);
  line(731,141,742,146);
  line(713,163,728,154);
  

  
  //lieas de la cara
  stroke(#F0A518);
  line(667,194,688,215);
  line(688,215,752,223);
  
  //bincha
    fill(#E8D99D);
  quad(608,199,590,186,721,102,731,121); 
  
noStroke();
 fill(#1d312e);
  ellipse(653,141, 45,45);

   //detalles cabeza
  
stroke(#F0A518);
  line(492,115,690,58);
  line(512,128,704,73);
  line(515,133,643,133);
  line(528,140,643,153);
  line(643,133,643,153);
 line(507,113,520,125);
 line(526,105,538,119);
 line(536,103,545,117);
 line(552,98,561,112);
 line(563,96,569,108);
 line(584,88,595,101);
 line(594,87,602,99);
 line(621,79,630,89);
 line(633,74,641,88);
 line(659,67,667,81);
 line(663,67,673,79);
 line(679,62,690,74);
 line(533,132,538,143);
 line(556,134,564,145);
 line(581,135,582,147);
 line(588,136,589,148);
 line(622,135,622,149);
 line(769,180,754,185);
 

  //oreja
  noStroke();
  fill(#C9AE7C);
  ellipse(641, 175, 25,30);
   ellipse(662, 188, 25,30);
  
  
  

  
 

}

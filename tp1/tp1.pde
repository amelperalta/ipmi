PImage miImagen;

void setup(){
  size(800,400);
  background(255);
  miImagen = loadImage ("kirby.jpg");
   
   
}

void draw(){
 background(255);
 
 
 //Piernas
 fill(229,48, 122);
 stroke(0);
 ellipse(400 + 280, 290, 150, 90);
  ellipse(400 + 100, 290, 150, 90);
  fill(255,190,190);
  noStroke();
  ellipse(400+50, 285, 20, 40);
  ellipse(400+330,285,20,40);
  
 //Manos
 fill(255, 195, 195);
 stroke(0);
 ellipse(400 + 80, 100, 110, 200);
 fill(255, 180, 180);
 noStroke();
 ellipse(400 + 80, 70, 70, 110);
 
 fill(255,195,195);
 stroke(0);
 ellipse(400+ 310, 200, 140, 110);
 fill(255,180,180);
 noStroke();
 ellipse(400+310,200, 130, 70);
 //Cara
fill(255, 195, 195);
 stroke(0);
 ellipse(400 + 190, 170, 300, 300) ;
 
 //Ojo
 fill(0);
 stroke(0);
 strokeWeight(7);
 ellipse(400 + 155, 130, 35 , 100) ;
 ellipse(400 + 220, 130, 35 , 100) ;
 //Sombra ojo
 fill(0, 0 , 255);
 stroke(0,40,180);
 strokeWeight(5);
 bezier(400+ 142, 155 , 400 + 155, 188 , 400 + 155, 188 , 400 + 165 , 155);
 fill(0, 0 , 255);
 stroke(0,40,180);
 strokeWeight(5);
 bezier(400+ 210, 155 , 400 + 222, 188 , 400 + 222, 188 , 400 + 233 , 155);
 
 //Mejilla
 fill(255, 150, 150);
 noStroke();
 ellipse(400 + 110, 170, 50, 35) ;
  ellipse(400 + 265, 170, 50, 35) ;
  
  //Boca
  fill(220, 0 ,150);
  noStroke();
  bezier(400 + 170 , 190 , 400 + 185, 221, 400 + 185 , 221, 400 + 205, 190);

fill(255, 150, 150);
noStroke();
ellipse (400 + 187, 205, 20, 15) ;
  
 
 //Pupila
 
 fill(245);
 ellipse(400 + 155, 100, 23 , 45) ;
 ellipse(400 + 220, 100, 23 , 45) ;
 

 
 
 

 
 
 
 
  image(miImagen, 0, 0, 400, 400);
  
 

}

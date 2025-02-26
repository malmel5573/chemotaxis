
 Butterfly[] but;
 void setup()   
 {     
   //noLoop();
    size(500, 500);
    but = new Butterfly[150];
    for(int i = 0; i < but.length; i++){
    but[i] = new Butterfly();
    }
    
 }   
 void draw()   
 {    
        background(0); 
        for(int i = 0; i < but.length; i++){
          but[i].fly();
          but[i].show();
        }
        
 }  
 class Butterfly    
 {     
   int high=(int)(Math.random()*500);
   int far=(int)(Math.random()*500);
   int myColor;
   
   public Butterfly(){
     
     myColor = color((int)(Math.random()*255)+3, (int)(Math.random()*255),(int)(Math.random()*255)+225); 
   }
   void fly(){
     high = high + (int)(Math.random()*9)-4;
     far = far + (int)(Math.random()*11)-5;
   }
   void show(){
     fill(myColor);
    ellipse(far,high,20,20);
     
if (mousePressed) { // Move only when the mouse is pressed
fill(242, 61, 88);
ellipse(mouseX - 20, mouseY, 30,30);
ellipse(mouseX + 20, mouseY - 10, 30,30);
ellipse(mouseX -5, mouseY - 20, 30,30);
ellipse(mouseX -5, mouseY +20, 30,30);
ellipse(mouseX +18, mouseY +15, 30,30);
fill(252, 186, 3);
ellipse(mouseX, mouseY, 20,20);
      if(mouseX > far){
        far = far + (int)(Math.random()*5)-1;}
      else{
        far = far + (int)(Math.random()*5)-3;}

      if(mouseY > high){
        high = high + (int)(Math.random()*5)-1;}
      else{
        high = high + (int)(Math.random()*5)-3;
      }
    }
   }
  
 }    

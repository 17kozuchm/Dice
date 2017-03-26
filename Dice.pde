Die foo;
int myTotal;
void setup()
{
  myTotal=0;
  size(400,450);
  noLoop();
}
void draw()
{
  background(0);
  for(int i = 2; i <= 400 ; i+=100)
  { 
    for(int j = 50; j<= 450; j+=100)
    {
   foo = new Die(i, j);
   foo.show();
    }
  }
     {
    fill(255);
    textSize(20);
    text(" TOTAL DOTS: " + myTotal, 120, 30); 
    }
}
void mousePressed()
{
  redraw();
}
class Die
{
  
  int dieX, dieY, dieRoll;
  Die( int a, int b)  
    {
    dieX = a;
    dieY = b;
    dieRoll = (int)(Math.random()*6)+1;
    myTotal = myTotal + dieRoll;
    }
  
void show()
  {
    fill (255);
    rect(dieX, dieY, 95,95);
    if (dieRoll == 1)
      {
         fill(0);
         ellipse(dieX + 50,dieY + 50,20,20);
      }
      else if (dieRoll == 2)
       {
         fill(0);
         ellipse(dieX + 20,dieY + 20,20,20);
         ellipse(dieX + 80,dieY + 80,20,20);
       }
      else if (dieRoll == 3)
       {
         fill(0);
         ellipse(dieX + 20,dieY + 20,20,20);
         ellipse(dieX + 50,dieY + 50,20,20);
         ellipse(dieX + 80,dieY + 80,20,20);
       }
      else if (dieRoll == 4)
       {
         fill(0);
         ellipse(dieX + 20,dieY + 20,20,20);
         ellipse(dieX + 80,dieY + 20,20,20);
         ellipse(dieX + 20,dieY + 80,20,20);
         ellipse(dieX + 80,dieY + 80,20,20);
       }
        else if (dieRoll == 5)
       {
         fill(0);
         ellipse(dieX + 50,dieY + 50,20,20);
         ellipse(dieX + 20,dieY + 20,20,20);
         ellipse(dieX + 80,dieY + 20,20,20);
         ellipse(dieX + 20,dieY + 80,20,20);
         ellipse(dieX + 80,dieY + 80,20,20);
       }
        else if (dieRoll == 6)
       {
         fill(0);
         ellipse(dieX + 50,dieY + 20,20,20);
         ellipse(dieX + 50,dieY + 80,20,20);
         ellipse(dieX + 20,dieY + 20,20,20);
         ellipse(dieX + 80,dieY + 20,20,20);
         ellipse(dieX + 20,dieY + 80,20,20);
         ellipse(dieX + 80,dieY + 80,20,20);
       }
    }
}

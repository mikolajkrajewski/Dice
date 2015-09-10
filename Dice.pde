Die vader;
int count;
int dots;
void setup()
{
	size(808,606);
	noLoop();
}
void draw()
{
  background(0);
  fill(255);
  textAlign(CENTER);
  text("Total Count: "+count,404,20);
  count = 0;
  for(int y = 101;y <= 606;y+=101)
  {
    for(int x = 1;x <= 808;x+=101)
    {
      Die vader = new Die(x,y);
      vader.show();
      vader.roll();
      count+=dots;
    }
  }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY;
	Die(int x, int y) //constructor
	{
		dots = (int)(Math.random()*6)+1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		if(dots == 1)
		{
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+50,myY+50,15,15);
		}
		else if(dots == 2)
		{
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		else if(dots == 3)
		{
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+50,myY+50,15,15);
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		else if(dots == 4)
		{
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
		}
		else if(dots == 5)
		{
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+50,myY+50,15,15);
		}
		else if(dots == 6)
		{
			fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+25,myY+50,15,15);
			ellipse(myX+75,myY+50,15,15);
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100);
	}
}

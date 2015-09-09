Die one;
Die two;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0);
	one = new Die(1,1);
	two = new Die(102,1);
	one.show();
	one.roll();
	two.show();
	two.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dots,myX,myY;
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
			fill(0);
			ellipse(myX+50,myY+50,15,15);
		}
		else if(dots == 2)
		{
			fill(0);
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		else if(dots == 3)
		{
			fill(0);
			ellipse(myX+50,myY+50,15,15);
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		else if(dots == 4)
		{
			fill(0);
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
		}
		else if(dots == 5)
		{
			fill(0);
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+50,myY+50,15,15);
		}
		else if(dots == 6)
		{
			fill(0);
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

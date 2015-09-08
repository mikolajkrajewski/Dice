Die one;
void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(0);
	one = new Die(100,100);
	one.show();
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
		dots = 1;
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100);
		if(dots == 1)
		{
			fill(0);
			ellipse(myX+50,myY+50,10,10);
		}
	}
}

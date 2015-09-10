import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

Die vader;
int count;
int dots;
public void setup()
{
	size(808,606);
	noLoop();
}
public void draw()
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
public void mousePressed()
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
	public void roll()
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
	public void show()
	{
		fill(255);
		rect(myX,myY,100,100);
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

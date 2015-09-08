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

Die one;
public void setup()
{
	size(500,500);
	noLoop();
}
public void draw()
{
	background(0);
	one = new Die(100,100);
	one.show();
}
public void mousePressed()
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
	public void roll()
	{
		//your code here
	}
	public void show()
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
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

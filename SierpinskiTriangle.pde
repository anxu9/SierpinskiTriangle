public void setup()
{
  size(500,500);
}

public void draw()
{
  background (#C7BBBC);
  mouseDragged();
  sierpinski(0,500,len);
  
}
int len = 0;
public void mouseDragged()//optional
{
  len = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=20)
    triangle (x, y, x+(len), y, x+(len/2), y+(len));
  else{
    stroke(255,255,255);
    fill(#CCE1F2);
    sierpinski(x, y, (len/2));
    sierpinski(x+(len/2), y, (len/2));
    fill (#F9DED7);
    sierpinski(x+(len/4), y-(len/2), (len/2));
  }
}

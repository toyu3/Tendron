class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSeg, myX, myY;
  private double myAngle;
  public Tendril(int len, double angle, int x, int y)
  {
    myNumSeg = len;
    myAngle = angle;
    myX = x;
    myY = y;
  }
  public void show()
  {
    int startX = myX;
    int startY = myY;

    if(myNumSeg >= 100){
      stroke(255);
    }else if(myNumSeg >= 30){
      stroke(255);
    }else if(myNumSeg >= 10){
      stroke(255);
    }else {
      stroke(255);
    }

    for(int i = 0; i < myNumSeg; i++){

      myAngle += Math.random()*0.4 - 0.2;

      int endX = startX + (int)(SEG_LENGTH*Math.cos(myAngle));
      int endY = startY + (int)(SEG_LENGTH*Math.sin(myAngle));

      line(startX, startY, endX, endY);
      
      startX = endX;
      startY = endY;
    }
    if(myNumSeg > 10){
      Cluster newC = new Cluster(myNumSeg / 3, startX, startY);
    }
  }
}

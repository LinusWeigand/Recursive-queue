public class KNOTEN{
  
  private DATENELEMENT datenElement;
  private KNOTEN nachfolger;
  private float x, y;
  
  public KNOTEN (DATENELEMENT datenElement){
    this.datenElement = datenElement;
    nachfolger = null;
    x = random(800);
    y = random(800);
  }
  
  public void draw(){
    fill(200, 255, 200);
    rect(x, y, 100, 100, 5);
    fill(0);
    textSize(20);
    text(datenElement.nameGeben(), x - 50, y);
    
    if(nachfolger != null){
      nachfolger.draw();
      line(x, y, nachfolger.getX(), nachfolger.getY());
    }
  }
  
  public void nachfolgerSetzen (KNOTEN nachfolger){
    this.nachfolger = nachfolger;
  }
  
  public KNOTEN nachfolgerGeben(){
    return nachfolger;
  }
  
  public DATENELEMENT datenElementGeben(){
    return datenElement;
  }
  
  public void informationAusgeben(){
     datenElement.informationAusgeben(); 
  }
  
  public int RestLaengeGeben(){
    if(nachfolger != null){
      return nachfolger.RestLaengeGeben() + 1;
    }else{
      return 1;
    }
  }
  
  public float getX(){
    return x;
  }
  
  public float getY(){
    return y;
  }
  
}

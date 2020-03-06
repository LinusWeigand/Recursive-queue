private KNOTEN anfang;
private KNOTEN ende;

public class WARTESCHLANGE {
  
  private float x, y;

  public WARTESCHLANGE() {
    anfang = null;
    ende = null;
    x = width/2;
    y = 100;
  }

  public void draw() {
    fill(200,200,255);
    rectMode(CENTER);
    stroke(255);
    strokeWeight(5);
    rect(x, y, 140, 80, 5);
    fill(0);
    textSize(13);
    text("WARTESCHLANGE", width/2 - 50, 100);
    
    if(anfang != null){
      anfang.draw();
      line(x, y, anfang.getX(), anfang.getY());
    }
  }


  public void einfuegen(DATENELEMENT datenElement) {
    KNOTEN knoten = new KNOTEN(datenElement);
    if (ende != null) {
      ende.nachfolgerSetzen(knoten);
    } else {
      anfang = knoten;
    }
    ende = knoten;
  }

  public DATENELEMENT entfernen() {
    DATENELEMENT datenElement = null;
    if (anfang != null) {
      datenElement = anfang.datenElementGeben();
      anfang = anfang.nachfolgerGeben();
      if (anfang == null) {
        ende = null;
      }
    }
    return datenElement;
  }
  
  public void informationAusgeben(){
     anfang.informationAusgeben(); 
  }
  
  public int LaengeGeben(){
    if(anfang != null){
      return anfang.RestLaengeGeben();
    }else{
      return 0;
    }
  }
}

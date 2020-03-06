WARTESCHLANGE warteschlange;
int i;

public void setup(){
  size(800, 800);
  warteschlange = new WARTESCHLANGE();
  i = 1;
}

public void draw(){
  background(50);
  warteschlange.draw();
}

public void keyPressed(){
  
  switch(keyCode){
    
    case ENTER:
    warteschlange.entfernen();
    break;
    
    case 80: // keyCode = p
    warteschlange.einfuegen(new PATIENT("" + i));
    i++;
    break;
    
    case 82: //keyCode = r
    warteschlange.einfuegen(new ROBOTER("" + i));
    i++;
    break;
  }
}

public void mousePressed(){
  println(warteschlange.LaengeGeben());
}

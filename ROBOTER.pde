public class ROBOTER implements DATENELEMENT{
  
  private String name;
  
  public ROBOTER(String name){
    this.name = name;
  }
  
  public void informationAusgeben(){
    println("Roboter" + name);
  }
  
  public String nameGeben(){
    return "Roboter" + name;
  }
}

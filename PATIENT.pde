public class PATIENT implements DATENELEMENT{
  
  private String name;
  
  public PATIENT(String name){
    this.name = name;
  }
  
  public void informationAusgeben(){
    println("Patient" + name);
  }
  
  public String nameGeben(){
    return "Patient" + name;
  }
  
}

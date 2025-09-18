class sample
{
 private String name;
 private int roll;
 sample(String name,int roll)
 {
  this.name=name;
  this.roll=roll;
 }
 public void setName(String name)
 {
  this.name=name;
 }
 public void setRoll(int roll)
 {
  this.roll=roll; 
 }
 public String getName()
 {
  return name;
 }
 public int getRoll()
 {
  return roll;
 }
}
class encap
{
 public static void main(String args[])
 {
  sample s=new sample("john",123);
  System.out.println(s.getName());
  System.out.println(s.getRoll());
 }
}
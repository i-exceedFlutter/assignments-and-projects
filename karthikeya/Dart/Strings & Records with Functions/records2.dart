void main() 
{
  var (t, u) = getTemperature();
  print('Temperature is $t degrees $u');
}

(double,String) getTemperature() 
{
  return (36.6, "Celsius");
}
 

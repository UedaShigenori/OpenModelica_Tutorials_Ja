model HelloWorld
  parameter Real a=-1;
  Real x(start=1);
equation
  der(x)=a*x;
end HelloWorld;


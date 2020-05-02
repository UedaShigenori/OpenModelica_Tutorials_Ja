model Cal_c
  parameter Real b;
  Real c;
  Real a;
  Port port annotation(
    Placement(visible = true, transformation(origin = {-118, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-102, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  a+b=c;
  a=port.var;
annotation(
    Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Text(origin = {3, 3}, extent = {{-77, 35}, {77, -35}}, textString = "a + b = c")}));
end Cal_c;

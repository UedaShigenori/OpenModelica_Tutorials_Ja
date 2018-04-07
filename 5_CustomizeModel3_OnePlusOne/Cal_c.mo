model Cal_c
  parameter Real b;
  Real c;
  Real a;
  Port port1 annotation(
    Placement(visible = true, transformation(origin = {-106, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  a = port1.var;
  a + b = c;
annotation(
    Icon(graphics = {Rectangle(lineThickness = 1.5, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 3}, lineThickness = 1.5, extent = {{-55, 19}, {55, -19}}, textString = "a + b = c")}));
    end Cal_c;

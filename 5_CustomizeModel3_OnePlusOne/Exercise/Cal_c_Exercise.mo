model Cal_c_Exercise
  Port port1 annotation(
    Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Port port2 annotation(
    Placement(visible = true, transformation(origin = {-90, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-102, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Real c;
  Real a;
  Real b;
equation
  a + b = c;
  port1.var = a;
  port2.var = b;
  annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -101}}), Text(origin = {6, 7}, lineThickness = 1.5, extent = {{-92, 39}, {92, -39}}, textString = "a + b = c")}));
end Cal_c_Exercise;

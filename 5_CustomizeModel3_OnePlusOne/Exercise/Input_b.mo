model Input_b
 parameter Real b;
  Port port1 annotation(
    Placement(visible = true, transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  port1.var = b;  
  annotation(
    Icon(graphics = {Rectangle(lineThickness = 1.5, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 6}, lineThickness = 1.5, extent = {{-55, 38}, {55, -38}}, textString = "B")}, coordinateSystem(initialScale = 0.1)));

end Input_b;

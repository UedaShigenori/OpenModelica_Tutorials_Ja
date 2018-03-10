model PlusB
  parameter Real b;
  Integer Anser;
  Port Port1 annotation(
    Placement(visible = true, transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  
  //Port
  Port1.var = a;
  annotation(
    Icon(graphics = {Rectangle(lineThickness = 1.5, extent = {{-100, 100}, {100, -100}}), Text(origin = {-1, 6}, lineThickness = 1.5, extent = {{-55, 38}, {55, -38}}, textString = "PlusOne")}, coordinateSystem(initialScale = 0.1)));
end PlusB;

model Input_a
  parameter Real a;
  Port port annotation(
    Placement(visible = true, transformation(origin = {110, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  port.var = a;
annotation(
    Icon(graphics = {Rectangle(extent = {{-100, 100}, {100, -100}}), Text(origin = {1, 2}, extent = {{-69, 32}, {69, -32}}, textString = "a")}));
end Input_a;

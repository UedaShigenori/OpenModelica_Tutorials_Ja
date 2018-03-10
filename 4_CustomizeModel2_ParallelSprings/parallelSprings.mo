model ParallelSprings
  parameter Real c1,c2;
  parameter Real start1,start2;
  parameter Real s_rel0_1,s_rel0_2;
  Modelica.Mechanics.Translational.Components.Spring spring1(c = c1, s_rel(fixed = true, start = start1), s_rel0 = s_rel0_1)  annotation(
    Placement(visible = true, transformation(origin = {0, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring2(c = c2, s_rel(fixed = true, start = start2), s_rel0 = s_rel0_2)  annotation(
    Placement(visible = true, transformation(origin = {0, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b annotation(
    Placement(visible = true, transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(spring1.flange_b, flange_b) annotation(
    Line(points = {{10, 20}, {40, 20}, {40, 0}, {104, 0}}, color = {0, 127, 0}));
  connect(spring2.flange_b, flange_b) annotation(
    Line(points = {{10, -20}, {40, -20}, {40, 0}, {104, 0}}, color = {0, 127, 0}));
  connect(spring2.flange_a, flange_a) annotation(
    Line(points = {{-10, -20}, {-40, -20}, {-40, 0}, {-100, 0}, {-100, 0}, {-100, 0}}, color = {0, 127, 0}));
  connect(spring1.flange_a, flange_a) annotation(
    Line(points = {{-10, 20}, {-40, 20}, {-40, 0}, {-100, 0}, {-100, 0}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "3.2.2")),
    Icon(graphics = {Rectangle(fillColor = {255, 170, 0}, fillPattern = FillPattern.Solid, lineThickness = 1.5, extent = {{-100, 100}, {100, -100}}), Text(origin = {0, 6}, lineThickness = 1.5, extent = {{-86, 54}, {86, -54}}, textString = "ParallelSprings")}, coordinateSystem(initialScale = 0.1)));
end ParallelSprings;

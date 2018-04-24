model tutorial4
  parameter Real c1,c2,c3;
  parameter Real start1,start2,start3;
  parameter Real s_rel0_1,s_rel0_2,s_rel0_3;
  Modelica.Mechanics.Translational.Components.Spring spring1(c = c1, s_rel(fixed = true, start = start1), s_rel0 = s_rel0_1)  annotation(
    Placement(visible = true, transformation(origin = {0, 48}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring2(c = c2, s_rel(fixed = true, start = start2), s_rel0 = s_rel0_2)  annotation(
    Placement(visible = true, transformation(origin = {2, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Interfaces.Flange_a flange_a annotation(
    Placement(visible = true, transformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Interfaces.Flange_b flange_b annotation(
    Placement(visible = true, transformation(origin = {108, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {108, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring3(c = c3, s_rel(fixed = true, start = start3), s_rel0 = s_rel0_3)  annotation(
    Placement(visible = true, transformation(origin = {2, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(spring3.flange_b, flange_b) annotation(
    Line(points = {{12, -40}, {60, -40}, {60, 0}, {108, 0}}, color = {0, 127, 0}));
  connect(spring2.flange_b, flange_b) annotation(
    Line(points = {{12, 0}, {108, 0}}, color = {0, 127, 0}));
  connect(spring2.flange_a, flange_a) annotation(
    Line(points = {{-8, 0}, {-104, 0}}, color = {0, 127, 0}));
  connect(spring3.flange_a, flange_a) annotation(
    Line(points = {{-8, -40}, {-54, -40}, {-54, 0}, {-108, 0}, {-108, -2}}, color = {0, 127, 0}));
  connect(spring1.flange_b, flange_b) annotation(
    Line(points = {{10, 48}, {60, 48}, {60, 0}, {108, 0}}, color = {0, 127, 0}));
  connect(spring1.flange_a, flange_a) annotation(
    Line(points = {{-10, 48}, {-54, 48}, {-54, 0}, {-104, 0}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "3.2.2")),
    Icon(graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 170, 255}, fillPattern = FillPattern.Solid, extent = {{-101, 101}, {101, -101}}), Text(origin = {-6, 0}, extent = {{-30, 12}, {30, -12}}, textString = "Parallelspring")}, coordinateSystem(initialScale = 0.1)));
end tutorial4;

model Tutorial3
  parameter Real V = 3;
  parameter Real rho = 5;
  Modelica.Mechanics.Translational.Components.Fixed fixed1(s0 = 0) annotation(
    Placement(visible = true, transformation(origin = {-36, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring1(c = 1, s_rel(fixed = true, start = 0.1), s_rel0 = 0) annotation(
    Placement(visible = true, transformation(origin = {2, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1(L = 0, m = V * rho, s(fixed = false, start = 0), v(fixed = true, start = 0)) annotation(
    Placement(visible = true, transformation(origin = {40, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixed1.flange, spring1.flange_a) annotation(
    Line(points = {{-36, 0}, {-8, 0}, {-8, 0}, {-8, 0}}, color = {0, 127, 0}));
  connect(spring1.flange_b, mass1.flange_a) annotation(
    Line(points = {{12, 0}, {30, 0}, {30, 0}, {30, 0}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end Tutorial3;

model Tutorial3
  parameter Real V=3;
  parameter Real rho=5;
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-64, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  Modelica.Mechanics.Translational.Components.Mass mass(m = V*rho, v(fixed = true, start = 0))  annotation(
    Placement(visible = true, transformation(origin = {14, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  
  Modelica.Mechanics.Translational.Components.Spring spring(c = 1, s_rel(fixed = true, start = 0.1))  annotation(
    Placement(visible = true, transformation(origin = {-28, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixed.flange, spring.flange_a) annotation(
    Line(points = {{-64, -4}, {-38, -4}, {-38, -4}, {-38, -4}}, color = {0, 127, 0}));
  connect(spring.flange_b, mass.flange_a) annotation(
    Line(points = {{-18, -4}, {4, -4}, {4, -4}, {4, -4}}, color = {0, 127, 0}));
annotation(
    uses(Modelica(version = "3.2.3")));
end Tutorial3;


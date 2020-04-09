model Tutorial1
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-48, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1, v(fixed = true, start = 0))  annotation(
    Placement(visible = true, transformation(origin = {14, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Spring spring(c = 1, s_rel(fixed = true, start = 0.1))  annotation(
    Placement(visible = true, transformation(origin = {-20, -24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(fixed.flange, spring.flange_a) annotation(
    Line(points = {{-48, -24}, {-30, -24}, {-30, -24}, {-30, -24}}, color = {0, 127, 0}));
  connect(spring.flange_b, mass.flange_a) annotation(
    Line(points = {{-10, -24}, {4, -24}, {4, -24}, {4, -24}}, color = {0, 127, 0}));

annotation(
    uses(Modelica(version = "3.2.3")));
end Tutorial1;

model Tutorial4
  ParallelSprings parallelSprings(c1 = 1, c2 = 1, s_rel0_1 = 0, s_rel0_2 = 0, start1 = 0.1, start2 = 0.1)  annotation(
    Placement(visible = true, transformation(origin = {-30, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass(m = 1, v(fixed = true, start = 0)) annotation(
    Placement(visible = true, transformation(origin = {4, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Fixed fixed annotation(
    Placement(visible = true, transformation(origin = {-68, -22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(parallelSprings.flange_b, mass.flange_a) annotation(
    Line(points = {{-20, -22}, {-6, -22}, {-6, -22}, {-6, -22}}, color = {0, 127, 0}));
  connect(parallelSprings.flange_a, fixed.flange) annotation(
    Line(points = {{-40, -22}, {-68, -22}, {-68, -22}, {-68, -22}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "3.2.3")));
end Tutorial4;

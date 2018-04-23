model test20180408_1
  Modelica.Mechanics.Translational.Components.Fixed fixed1 annotation(
    Placement(visible = true, transformation(origin = {-82, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Translational.Components.Mass mass1 annotation(
    Placement(visible = true, transformation(origin = {84, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  tutorial4 tutorial41(c1 = 1, c2 = 1, c3 = 1, s_rel0_1 = 0, s_rel0_2 = 0, s_rel0_3 = 10, start1 = 0.1, start2 = 0.1, start3 = 0.1) annotation(
    Placement(visible = true, transformation(origin = {12, 2}, extent = {{-34, -34}, {34, 34}}, rotation = 0)));
equation
  connect(mass1.flange_a, tutorial41.flange_b) annotation(
    Line(points = {{74, 2}, {49, 2}}, color = {0, 127, 0}));
  connect(fixed1.flange, tutorial41.flange_a) annotation(
    Line(points = {{-82, 2}, {-25, 2}, {-25, 1}}, color = {0, 127, 0}));
  annotation(
    uses(Modelica(version = "3.2.2")));
end test20180408_1;

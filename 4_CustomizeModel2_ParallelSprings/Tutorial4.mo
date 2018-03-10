model Tutorial4
    Modelica.Mechanics.Translational.Components.Fixed fixed1 annotation(
      Placement(visible = true, transformation(origin = {-36, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
    Modelica.Mechanics.Translational.Components.Mass mass1(m = 1, s(fixed = false, start = 0), v(fixed = true, start = 0))  annotation(
      Placement(visible = true, transformation(origin = {50, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    ParallelSprings parallelSprings1(c1 = 1, c2 = 1, s_rel0_1 = 0, s_rel0_2 = 0, start1 = 0.1, start2 = 0.1)  annotation(
      Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));  equation
    connect(fixed1.flange, parallelSprings1.flange_a) annotation(
      Line(points = {{-36, 0}, {-12, 0}}, color = {0, 127, 0}));
    connect(parallelSprings1.flange_b, mass1.flange_a) annotation(
      Line(points = {{12, 0}, {40, 0}, {40, 0}, {40, 0}}, color = {0, 127, 0}));
    annotation(
      uses(Modelica(version = "3.2.2")));

  
end Tutorial4;

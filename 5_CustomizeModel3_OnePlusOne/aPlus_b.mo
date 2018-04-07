model aPlus_b
  Input_a input_a1(a = 1)  annotation(
    Placement(visible = true, transformation(origin = {-30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Cal_c cal_c1(b = 1)  annotation(
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(input_a1.port1, cal_c1.port1) annotation(
    Line(points = {{-18, 0}, {18, 0}, {18, 0}, {18, 0}}));
end aPlus_b;

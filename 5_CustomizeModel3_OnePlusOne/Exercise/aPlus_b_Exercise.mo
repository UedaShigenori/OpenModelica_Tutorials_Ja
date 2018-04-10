model aPlus_b_Exercise
  Input_a input_a1(a = 1)  annotation(
    Placement(visible = true, transformation(origin = {-40, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Input_b input_b1(b = 1)  annotation(
    Placement(visible = true, transformation(origin = {-40, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Cal_c_Exercise cal_c_Exercise1 annotation(
    Placement(visible = true, transformation(origin = {36, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(input_b1.port1, cal_c_Exercise1.port2) annotation(
    Line(points = {{-28, -40}, {0, -40}, {0, -6}, {26, -6}, {26, -6}}));
  connect(input_a1.port1, cal_c_Exercise1.port1) annotation(
    Line(points = {{-28, 42}, {0, 42}, {0, 6}, {26, 6}, {26, 6}}));

end aPlus_b_Exercise;

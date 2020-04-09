model aPlus_b
  Input_a input_a(a = 1)  annotation(
    Placement(visible = true, transformation(origin = {-46, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Cal_c cal_c(b = 1)  annotation(
    Placement(visible = true, transformation(origin = { 16, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(input_a.port, cal_c.port) annotation(
    Line(points = {{-34, 0}, {4, 0}, {4, 0}, {6, 0}}));
end aPlus_b;

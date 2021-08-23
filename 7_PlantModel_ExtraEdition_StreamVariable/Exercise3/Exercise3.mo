model Exercise3
  SimplePipe pipe1 annotation(
    Placement(visible = true, transformation(origin = {-40, 7}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SimplePipe pipe3 annotation(
    Placement(visible = true, transformation(origin = {28, -31}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SimplePipe pipe2 annotation(
    Placement(visible = true, transformation(origin = {-38, -71}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  StreamConnectors.Sources.MassFlowBoundary_h massFlowBoundary_h(h = 3, m_flow = 4)  annotation(
    Placement(visible = true, transformation(origin = {-86, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  StreamConnectors.Sources.MassFlowBoundary_h massFlowBoundary_h1(h = 2, m_flow = 1)  annotation(
    Placement(visible = true, transformation(origin = {-86, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  StreamConnectors.Sources.PressureBoundary_h pressureBoundary_h(h = 7, p = 0)  annotation(
    Placement(visible = true, transformation(origin = {80, -32}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
equation
  connect(massFlowBoundary_h1.port, pipe1.port_a) annotation(
    Line(points = {{-74, 6}, {-52, 6}, {-52, 8}, {-50, 8}}));
  connect(massFlowBoundary_h.port, pipe2.port_a) annotation(
    Line(points = {{-74, -72}, {-50, -72}, {-50, -70}, {-48, -70}}));
  connect(pipe2.port_b, pipe3.port_a) annotation(
    Line(points = {{-26, -70}, {0, -70}, {0, -32}, {18, -32}, {18, -30}}));
  connect(pipe1.port_b, pipe3.port_a) annotation(
    Line(points = {{-28, 8}, {0, 8}, {0, -32}, {18, -32}, {18, -30}}));
  connect(pipe3.port_b, pressureBoundary_h.port) annotation(
    Line(points = {{40, -30}, {68, -30}, {68, -32}, {70, -32}}));
  annotation(
    uses(Modelica(version = "3.2.3")));
end Exercise3;

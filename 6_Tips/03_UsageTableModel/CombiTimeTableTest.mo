model CombiTimeTableTest
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable1(columns = 1:3, fileName = "C:\Work\CombiTimeTableTest.txt", smoothness = Modelica.Blocks.Types.Smoothness.ContinuousDerivative, tableName = "Tab1", tableOnFile = true) annotation(
    Placement(visible = true, transformation(origin = {-18, -12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation

annotation(
    uses(Modelica(version = "3.2.3")),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));end CombiTimeTableTest;

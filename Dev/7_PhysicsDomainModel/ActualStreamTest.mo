package ActualStreamTest
connector StreamPort

  flow Real m;
  stream Real h;
  annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, fillColor = {85, 255, 127}, fillPattern = FillPattern.Solid, lineThickness = 1.5, extent = {{-100, 101}, {100, -101}})}));
end StreamPort;

  package Examples1_Base
    model InletActual
      ActualStreamTest.StreamPort streamPort1 annotation(
        Placement(visible = true, transformation(origin = {100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real H,Mass;
    
    equation
      //流出の場合の比エンタルピー
      streamPort1.h = H / Mass;
      
      //流入出の場合のHを、actualStreamを使って計算
      der(H) = streamPort1.m * actualStream(streamPort1.h);
      
      //質量流量を逆流があるようにsin波で表す
      streamPort1.m = sin(time);
      
      //このコンポーネント内にため込まれる質量を計算
      der(Mass)=streamPort1.m;
    
    initial equation
      //微分を使用するため初期値を設定する必要がある
      H = 1;
      Mass=1;  
      
      
      annotation(
        Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -99}}), Text(origin = {-26, 53}, extent = {{-36, 15}, {94, -45}}, textString = "pm"), Text(origin = {-15, -25}, extent = {{-63, 19}, {99, -47}}, textString = "Inlet")}, coordinateSystem(initialScale = 0.1)));
    end InletActual;












    model AcceptActual
      ActualStreamTest.StreamPort streamPort1 annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real H;
      Real Mass;
      Real h_sp;
      
    initial equation
      //微分を使用するため初期値を設定する必要がある
      H = 10;
      Mass = 10;
      
    equation
      //流出の場合の比エンタルピー
      streamPort1.h = H / Mass;
      
      //流入出の場合のHを、actualStreamを使って計算
      der(H) = streamPort1.m * actualStream(streamPort1.h);
    
      //このコンポーネント内にため込まれる質量を計算
      der(Mass) = streamPort1.m;
      
      
      h_sp=actualStream(streamPort1.h);
      annotation(
        Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -99}}), Text(origin = {1, -19}, extent = {{-79, 57}, {79, -57}}, textString = "Accept"), Text(origin = {-13, 47}, extent = {{-59, 27}, {75, -35}}, textString = "pm")}, coordinateSystem(initialScale = 0.1)));
    end AcceptActual;









    model Example1
      ActualStreamTest.Examples1_Base.AcceptActual acceptActual1 annotation(
        Placement(visible = true, transformation(origin = {-4, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ActualStreamTest.Examples1_Base.InletActual inlet1 annotation(
        Placement(visible = true, transformation(origin = {-36, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(inlet1.streamPort1, acceptActual1.streamPort1) annotation(
        Line(points = {{-26, -50}, {-14, -50}, {-14, -50}, {-14, -50}}));
    end Example1;





  end Examples1_Base;






  package Examples2_AddQin
    model InletActual
      StreamTest.StreamPort streamPort1 annotation(
        Placement(visible = true, transformation(origin = {100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      parameter Real p;
      Real H, m;
      Real h_sp;
    initial equation
      H = 1;
    equation
      m = sin(time);
//base
      streamPort1.p = p;
      streamPort1.m = m;
      m * actualStream(streamPort1.h) = der(H);
      streamPort1.h = der(H) / m;
      actualStream(streamPort1.h) = h_sp;
      annotation(
        Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -99}}), Text(origin = {-26, 53}, extent = {{-36, 15}, {94, -45}}, textString = "pm"), Text(origin = {-15, -25}, extent = {{-63, 19}, {99, -47}}, textString = "Inlet")}, coordinateSystem(initialScale = 0.1)));
    end InletActual;


    model AcceptActual
      StreamTest.StreamPort streamPort1 annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real H, h_sp;
      Real Mass;
      parameter Real Q = 1;
    initial equation
      H = 10;
      Mass = 10;
    equation
      der(H) = streamPort1.m * actualStream(streamPort1.h) + Q;
      der(Mass) = streamPort1.m;
      streamPort1.h = if streamPort1.m < 0 then H / Mass else inStream(streamPort1.h);
      actualStream(streamPort1.h) = h_sp;
      annotation(
        Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -99}}), Text(origin = {1, -19}, extent = {{-79, 57}, {79, -57}}, textString = "Accept"), Text(origin = {-13, 47}, extent = {{-59, 27}, {75, -35}}, textString = "pm")}, coordinateSystem(initialScale = 0.1)));
    end AcceptActual;


    model Example1_base
      AcceptActual acceptActual1 annotation(
        Placement(visible = true, transformation(origin = {-4, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      InletActual inlet1(p = 1) annotation(
        Placement(visible = true, transformation(origin = {-36, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(inlet1.streamPort1, acceptActual1.streamPort1) annotation(
        Line(points = {{-26, -50}, {-14, -50}, {-14, -50}, {-14, -50}}));
    end Example1_base;




  end Examples2_AddQin;


  package Examples3_ThreeWay
    model InletActual
      ActualStreamTest.StreamPort streamPort1 annotation(
        Placement(visible = true, transformation(origin = {100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real H, Mass;
      parameter Real m;
      parameter Real H_start;
    initial equation
      H = H_start;
      Mass = 1;
    equation
      streamPort1.m = m;
      der(Mass) = streamPort1.m;
      streamPort1.m * actualStream(streamPort1.h) = der(H);
      streamPort1.h = if streamPort1.m < 0 then H / Mass else inStream(streamPort1.h);
      annotation(
        Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -99}}), Text(origin = {-26, 53}, extent = {{-36, 15}, {94, -45}}, textString = "pm"), Text(origin = {-15, -25}, extent = {{-63, 19}, {99, -47}}, textString = "Inlet")}, coordinateSystem(initialScale = 0.1)));
    end InletActual;






    model AcceptActual
      ActualStreamTest.StreamPort streamPort1 annotation(
        Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Real H;
      Real Mass;
      Real h_sp;
    initial equation
      H = 10;
      Mass = 10;
    equation
      der(H) = streamPort1.m * actualStream(streamPort1.h);
      der(Mass) = streamPort1.m;
      streamPort1.h = if streamPort1.m < 0 then H / Mass else inStream(streamPort1.h);
      h_sp=actualStream(streamPort1.h);
      annotation(
        Icon(graphics = {Rectangle(origin = {0, 1}, lineThickness = 1.5, extent = {{-100, 99}, {100, -99}}), Text(origin = {1, -19}, extent = {{-79, 57}, {79, -57}}, textString = "Accept"), Text(origin = {-13, 47}, extent = {{-59, 27}, {75, -35}}, textString = "pm")}, coordinateSystem(initialScale = 0.1)));
    end AcceptActual;



    model Example_ThreeWay
      ActualStreamTest.Examples3_ThreeWay.AcceptActual acceptActual1 annotation(
        Placement(visible = true, transformation(origin = {-4, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      ActualStreamTest.Examples3_ThreeWay.InletActual inlet1(H_start = 2, m = -1)  annotation(
        Placement(visible = true, transformation(origin = {-42, -32}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ActualStreamTest.Examples3_ThreeWay.InletActual inletActual1(H_start = 4, m = -2) annotation(
        Placement(visible = true, transformation(origin = {-42, -72}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      connect(inletActual1.streamPort1, acceptActual1.streamPort1) annotation(
        Line(points = {{-32, -72}, {-16, -72}, {-16, -50}, {-14, -50}}));
      connect(inlet1.streamPort1, acceptActual1.streamPort1) annotation(
        Line(points = {{-32, -32}, {-20, -32}, {-20, -50}, {-14, -50}}));
    end Example_ThreeWay;



  end Examples3_ThreeWay;






end ActualStreamTest;

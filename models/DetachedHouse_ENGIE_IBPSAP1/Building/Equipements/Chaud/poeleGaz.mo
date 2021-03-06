within DetachedHouse_ENGIE_IBPSAP1.Building.Equipements.Chaud;
model poeleGaz

  // Stove parameters
  parameter Modelica.SIunits.SpecificHeatCapacity Cp = 7100 "Specific heat capacity of the stove material";
  parameter Modelica.SIunits.Mass m = 7100 "Mass of the stove material";
  parameter Real tableFonctionnement[:,:]=[0,0; 0.01,4400; 0.44,5100; 0.51,6000;
      0.6,6500; 0.65,6800; 0.68,6900; 0.69,7000; 0.7,7100; 1,7100]
    "Power table of the stove";
  parameter Modelica.SIunits.Power PertesVeilleuse = 261 "Losses due to sleep mode (only in occupation)";
  parameter Modelica.SIunits.Power PertesElectronique = 5 "Losses due to electronic (permanent)";
  parameter Real tableRendements[:,:]=[0,0; 4400,0.54; 5100,0.564; 6000,0.597; 6500,
      0.606; 6800,0.621; 6900,0.632; 7000,0.622; 7100,0.64]
    "Efficiency table of the stove";

  // Outputs
  Modelica.SIunits.Power QFue_flow "Heat released by fuel";
  Modelica.SIunits.Power QHeat_flow "Heat transfer from gas into heat";
  Modelica.SIunits.Efficiency eta "Efficiency";
  Modelica.SIunits.Power PElec "Electric consumption";

  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow
    annotation (Placement(transformation(extent={{0,10},{12,22}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b ConvectifHeatPort
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
  Modelica.Blocks.Tables.CombiTable1D TableRendements(table=tableRendements)
    annotation (Placement(transformation(extent={{-36,-30},{-24,-18}})));
  Modelica.Blocks.Interfaces.RealInput ConsigneCh
    annotation (Placement(transformation(extent={{-100,10},{-60,50}})));
  Modelica.Blocks.Interfaces.RealInput T
    annotation (Placement(transformation(extent={{-100,-50},{-60,-10}})));
  Buildings.Controls.Continuous.LimPID conHea(
    Td=1e4,
    controllerType=Modelica.Blocks.Types.SimpleController.PI,
    yMax=1,
    yMin=0,
    k=k_PID,
    Ti=Ti_PID,
    initType=Modelica.Blocks.Types.InitPID.InitialState)
         "Controller for heating"
    annotation (Placement(transformation(extent={{-50,-8},{-42,0}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(C=Cp*m)
    annotation (Placement(transformation(extent={{30,16},{50,36}})));
  Modelica.Blocks.Tables.CombiTable1D PlageFonctionnement(smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments, table=
        tableFonctionnement)
    annotation (Placement(transformation(extent={{-38,-10},{-26,2}})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean(threshold=0.1)
    annotation (Placement(transformation(extent={{-46,12},{-38,20}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal
    annotation (Placement(transformation(extent={{-34,12},{-26,20}})));
  Modelica.Blocks.Math.Product product1
    annotation (Placement(transformation(extent={{-16,12},{-8,20}})));
  Modelica.Blocks.Interfaces.RealInput occupation
    "Connector of Real input signal"
    annotation (Placement(transformation(extent={{-100,-20},{-60,20}})));
  Modelica.Blocks.Math.Product product2
    annotation (Placement(transformation(extent={{22,-10},{28,-4}})));
  Modelica.Blocks.Sources.RealExpression realExpression_pertesVeilleuse(y=
        PertesVeilleuse)
    annotation (Placement(transformation(extent={{10,-12},{16,-6}})));
  Modelica.Blocks.Sources.RealExpression RealExpression_pertesElectronique(y=
        PertesElectronique)
    annotation (Placement(transformation(extent={{10,-18},{16,-12}})));

  parameter Real k_PID=1e-2 "Gain of controller"
    annotation(Dialog(group = "Stove control"));
  parameter Modelica.SIunits.Time Ti_PID=1e2
    "Time constant of Integrator block"
    annotation(Dialog(group = "Stove control"));
  Modelica.Blocks.Math.Product product3
    annotation (Placement(transformation(extent={{-12,-20},{-4,-12}})));
  Modelica.Blocks.Math.Product product4
    annotation (Placement(transformation(extent={{32,0},{38,6}})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean1(threshold=1)
    annotation (Placement(transformation(extent={{2,0},{10,8}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal1(realTrue=0, realFalse=1)
    annotation (Placement(transformation(extent={{14,0},{22,8}})));
equation
 QFue_flow = ConvectifHeatPort.Q_flow;
 QHeat_flow = PlageFonctionnement.y[1]+product4.y;
 PElec = RealExpression_pertesElectronique.y;
 eta = product3.u2;

  connect(ConsigneCh, conHea.u_s) annotation (Line(points={{-80,30},{-62,30},
          {-56,30},{-56,-4},{-50.8,-4}},
                                color={0,0,127}));
  connect(T, conHea.u_m) annotation (Line(points={{-80,-30},{-66,-30},{-66,-32},
          {-46,-32},{-46,-8.8}}, color={0,0,127}));
  connect(realToBoolean.y, booleanToReal.u)
    annotation (Line(points={{-37.6,16},{-34.8,16}}, color={255,0,255}));
  connect(realToBoolean.u, occupation) annotation (Line(points={{-46.8,16},
          {-60,16},{-60,0},{-80,0}}, color={0,0,127}));
  connect(prescribedHeatFlow.port, heatCapacitor.port)
    annotation (Line(points={{12,16},{40,16}},         color={191,0,0}));
  connect(ConvectifHeatPort, heatCapacitor.port) annotation (Line(points={{60,0},{
          50,0},{50,0},{40,0},{40,16}},        color={191,0,0}));
  connect(booleanToReal.y, product1.u1) annotation (Line(points={{-25.6,16},
          {-22,16},{-22,18.4},{-16.8,18.4}}, color={0,0,127}));
  connect(product2.u1, product1.u1) annotation (Line(points={{21.4,-5.2},
          {0,-5.2},{0,-6},{-22,-6},{-22,18.4},{-16.8,18.4}},
                                              color={0,0,127}));
  connect(conHea.y, PlageFonctionnement.u[1]) annotation (Line(points={{-41.6,
          -4},{-39.2,-4}},        color={0,0,127}));
  connect(TableRendements.y[1], product3.u2) annotation (Line(points={{-23.4,
          -24},{-22,-24},{-22,-18.4},{-12.8,-18.4}},
                                                color={0,0,127}));
  connect(TableRendements.u[1], PlageFonctionnement.y[1]) annotation (Line(
        points={{-37.2,-24},{-40,-24},{-40,-14},{-40,-14},{-40,-14},{-24,
          -14},{-24,-4},{-22,-4},{-26,-4},{-25.4,-4}},
                       color={0,0,127}));
  connect(product4.u2, product2.y) annotation (Line(points={{31.4,1.2},{
          30,1.2},{30,-2},{30,-2},{30,-6},{30,-7},{28.3,-7}},
                                              color={0,0,127}));
  connect(realToBoolean1.y, booleanToReal1.u)
    annotation (Line(points={{10.4,4},{13.2,4}},
                                               color={255,0,255}));
  connect(booleanToReal1.y, product4.u1) annotation (Line(points={{22.4,4},
          {26,4},{26,4.8},{31.4,4.8}},
                                color={0,0,127}));
  connect(product1.u2, PlageFonctionnement.y[1]) annotation (Line(points={{
          -16.8,13.6},{-20,13.6},{-20,-4},{-25.4,-4}}, color={0,0,127}));
  connect(product1.y, product3.u1) annotation (Line(points={{-7.6,16},{-6,
          16},{-6,2},{-16,2},{-16,-13.6},{-12.8,-13.6}}, color={0,0,127}));
  connect(product3.y, realToBoolean1.u) annotation (Line(points={{-3.6,
          -16},{-2,-16},{-2,4},{1.2,4},{1.2,4}},
                                color={0,0,127}));
  connect(product3.y, prescribedHeatFlow.Q_flow) annotation (Line(points={{
          -3.6,-16},{-2,-16},{-2,-14},{-2,16},{0,16}}, color={0,0,127}));
  connect(realExpression_pertesVeilleuse.y, product2.u2) annotation (Line(
        points={{16.3,-9},{19.15,-9},{19.15,-8.8},{21.4,-8.8}}, color={0,
          0,127}));
  annotation (Diagram(coordinateSystem(extent={{-60,-40},{60,40}})), Icon(
        coordinateSystem(extent={{-60,-40},{60,40}})),
    Documentation(info="<html>
<h4>Equipements</h4>
<p>Ce mod&egrave;le de po&ecirc;le permet de simuler : </p>
<ul>
<li>la puissance du po&ecirc;le selon des paliers de fonctionnement d&eacute;finis &agrave; partir d&apos;une table (<i>tableFonctionnement</i>)</li>
<li>le rendement du po&ecirc;le suivant les paliers d&eacute;finit &eacute;galement &agrave; partir d&apos;une table (<i>tableRendements</i>)</li>
<li>la consommation de gaz (consommation de fonctionnement et veilleuse la nuit entre 8h et 21h <i>PertesVeilleuse</i>)</li>
<li>la consommation &eacute;lectrique (electronique en permanence <i>PertesElectronique</i>)</li>
</ul>
</html>"));
end poeleGaz;

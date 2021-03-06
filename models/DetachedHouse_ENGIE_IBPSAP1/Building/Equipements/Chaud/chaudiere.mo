within DetachedHouse_ENGIE_IBPSAP1.Building.Equipements.Chaud;
model chaudiere

  replaceable package MediumW =
      Modelica.Media.Interfaces.PartialMedium "Medium in the component"
      annotation (choicesAllMatching = true);

  // Boiler specifications
  parameter Modelica.SIunits.Power Q_flow_nominal "Nominal heating power";
  parameter Modelica.SIunits.Temperature T_nominal=353.15
    "Temperature used to compute nominal efficiency (only used if efficiency curve depends on temperature)";
  parameter Buildings.Fluid.Types.EfficiencyCurves effCur=Buildings.Fluid.Types.EfficiencyCurves.Constant
    "Curve used to compute the efficiency";
  parameter Real a[:] = {0.9} "Coefficients for efficiency curve";
  parameter Buildings.Fluid.Data.Fuels.Generic fue "Fuel type"
   annotation (choicesAllMatching = true);
  parameter Modelica.SIunits.ThermalConductance UA=0.05*Q_flow_nominal/30
    "Overall UA value";
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal
    "Nominal mass flow rate"
    annotation(Dialog(group = "Nominal condition"));
  parameter Modelica.SIunits.PressureDifference dp_nominal
    "Pressure difference"
    annotation(Dialog(group = "Nominal condition"));

  // Boiler control
  parameter Modelica.SIunits.Temperature T_consigne = 273.15 + 70
    "Boiler output temperature setpoint"
    annotation(Dialog(group = "Boiler control"));
  parameter Real k_PID = 1e-1 "Gain of controller"
    annotation(Dialog(group = "Boiler control"));
  parameter Modelica.SIunits.Time Ti_PID = 5e2
    "Time constant of Integrator block"
    annotation(Dialog(group = "Boiler control"));

  // Electric consumption
  parameter Modelica.SIunits.Power PElec_nom = 27 "Electrical power at nominal conditions"
    annotation(Dialog(group = "Electric consumption"));
  parameter Modelica.SIunits.Power PElec_arret = 2.7 "Electrical power at zero load"
    annotation(Dialog(group = "Electric consumption"));

  // Pertes
  parameter Modelica.SIunits.Power Pertes_arret = 36 "Losses due to a shutdown"
    annotation(Dialog(group = "Losses"));

  Modelica.SIunits.Power PElec "Electric consumption";
  Modelica.SIunits.Power QFue_flow "Heat released by fuel";
  Modelica.SIunits.Power QWat_flow "Heat transfer from gas into water";
  Modelica.SIunits.Efficiency eta "Boiler efficiency";
  Modelica.SIunits.Efficiency Pertes "Boiler losses";

  Control.Regul_Ch_1_bis regul_Chaudiere(Khea=1)
    annotation (Placement(transformation(extent={{2,30},{-11,37}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=T_consigne)
    annotation (Placement(transformation(extent={{34,32},{23,41}})));

  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare final package Medium
      = MediumW) annotation (Placement(transformation(rotation=0, extent={{-94,-10},
            {-114,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare final package Medium
      = MediumW)
    annotation (Placement(transformation(rotation=0, extent={{92,-10},{112,10}})));

  Modelica.Blocks.Math.BooleanToReal booleanToReal(realTrue=PElec_nom,
      realFalse=PElec_arret)
    annotation (Placement(transformation(extent={{74,-24},{82,-16}})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean(threshold=0.01)
    annotation (Placement(transformation(extent={{56,-24},{64,-16}})));

  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort
    "Heat port, can be used to connect to ambient"
    annotation (Placement(transformation(extent={{-10,62}, {10,82}}),
        iconTransformation(extent={{-10,60},{10,80}})));
  Buildings.Fluid.Boilers.BoilerPolynomial chaudiere(
    redeclare package Medium = MediumW,
    m_flow_nominal=m_flow_nominal,
    dp_nominal=dp_nominal,
    Q_flow_nominal=Q_flow_nominal,
    T_nominal=T_nominal,
    effCur=effCur,
    a=a,
    fue=fue,
    UA=UA) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));

  Modelica.Blocks.Logical.Timer timer
    annotation (Placement(transformation(extent={{-54,-72},{-34,-52}})));
  Modelica.Blocks.Logical.Not not1
    annotation (Placement(transformation(extent={{-84,-72},{-64,-52}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=3600)
    annotation (Placement(transformation(extent={{-12,-60},{8,-40}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold
    annotation (Placement(transformation(extent={{-12,-88},{8,-68}})));
  Modelica.Blocks.Logical.And and1
    annotation (Placement(transformation(extent={{30,-72},{50,-52}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal1(realTrue=36, realFalse=0)
    annotation (Placement(transformation(extent={{58,-72},{78,-52}})));
  parameter Real P_min= 0.3 "Charge minimale";
  Modelica.Blocks.Math.Product product
    annotation (Placement(transformation(extent={{64,50},{44,70}})));
  Modelica.Blocks.Interfaces.RealInput u "Connector of Real input signal 1"
    annotation (Placement(transformation(extent={{-140,60},{-100,100}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal2
    annotation (Placement(transformation(extent={{-54,70},{-34,90}})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean1(threshold=0.001)
    annotation (Placement(transformation(extent={{-84,70},{-64,90}})));
equation

  PElec = booleanToReal.y;
  QFue_flow = chaudiere.QFue_flow;
  QWat_flow = chaudiere.QWat_flow;
  eta = chaudiere.eta;
  Pertes = booleanToReal1.y;

  connect(regul_Chaudiere.ConsigneCh, realExpression.y) annotation (Line(points={{3.04,
          35.8333},{22.45,35.8333},{22.45,36.5}},       color={0,0,127}));
  connect(booleanToReal.u, realToBoolean.y)
    annotation (Line(points={{73.2,-20},{64.4,-20}},
                                                   color={255,0,255}));
  connect(chaudiere.port_a, port_a)
    annotation (Line(points={{-10,0},{-104,0}}, color={0,127,255}));
  connect(chaudiere.port_b, port_b)
    annotation (Line(points={{10,0},{102,0}}, color={0,127,255}));
  connect(chaudiere.T, regul_Chaudiere.T) annotation (Line(points={{11,8},{20,8},
          {20,33.5},{3.04,33.5}}, color={0,0,127}));
  connect(chaudiere.heatPort, heatPort)
    annotation (Line(points={{0,7.2},{0,72}}, color={191,0,0}));
  connect(not1.y, timer.u) annotation (Line(points={{-63,-62},{-59.5,-62},{-56,-62}},
        color={255,0,255}));
  connect(not1.u, realToBoolean.y) annotation (Line(points={{-86,-62},{-90,-62},
          {-90,-58},{-90,-42},{-90,-36},{70,-36},{70,-20},{64.4,-20}}, color={255,
          0,255}));
  connect(lessThreshold.u, timer.y) annotation (Line(points={{-14,-50},{-20,-50},
          {-20,-48},{-26,-48},{-26,-62},{-33,-62}}, color={0,0,127}));
  connect(greaterThreshold.u, timer.y) annotation (Line(points={{-14,-78},{-24,-78},
          {-24,-76},{-26,-76},{-26,-62},{-33,-62}}, color={0,0,127}));
  connect(lessThreshold.y, and1.u1) annotation (Line(points={{9,-50},{16,-50},{16,
          -62},{28,-62}}, color={255,0,255}));
  connect(greaterThreshold.y, and1.u2) annotation (Line(points={{9,-78},{14,-78},
          {14,-70},{28,-70}}, color={255,0,255}));
  connect(and1.y, booleanToReal1.u) annotation (Line(points={{51,-62},{53.5,-62},
          {56,-62}}, color={255,0,255}));
  connect(realToBoolean.u, chaudiere.y) annotation (Line(points={{55.2,-20},{24,
          -20},{24,-22},{-26,-22},{-26,8},{-12,8}}, color={0,0,127}));
  connect(regul_Chaudiere.yHea, product.u2) annotation (Line(points={{-12.3,
          33.5},{-20,33.5},{-20,44},{82,44},{82,54},{66,54}}, color={0,0,
          127}));
  connect(realToBoolean1.y, booleanToReal2.u) annotation (Line(points={{-63,
          80},{-58,80},{-56,80}}, color={255,0,255}));
  connect(u, realToBoolean1.u) annotation (Line(points={{-120,80},{-103,80},
          {-86,80}}, color={0,0,127}));
  connect(booleanToReal2.y, product.u1) annotation (Line(points={{-33,80},{
          84,80},{84,66},{66,66}}, color={0,0,127}));
  connect(product.y, chaudiere.y) annotation (Line(points={{43,60},{6,60},{
          6,60},{-26,60},{-26,8},{-12,8}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-100,-100},{100,100}})),
                                                                     Icon(
        coordinateSystem(extent={{-100,-100},{100,100}}),
                                                        graphics={
        Rectangle(
          extent={{-70,58},{70,-62}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-101,4},{100,-6}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{0,-6},{100,4}},
          lineColor={0,0,255},
          pattern=LinePattern.None,
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-20,20},{20,-22}},
          fillColor={127,0,0},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Polygon(
          points={{0,-36},{-12,-54},{14,-54},{0,-36}},
          pattern=LinePattern.None,
          smooth=Smooth.None,
          fillColor={255,255,0},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,0}),
        Text(
          extent={{-147,-98},{153,-138}},
          lineColor={0,0,255},
          textString="%name")}),
    Documentation(info="<html>
<h4>Equipements</h4>
<p>Ce mod&egrave;le de chaudi&egrave;re permet de simuler : </p>
<ul>
<li>la chaudi&egrave;re classique</li>
<li>sa r&eacute;gulation</li>
<li>la puissance de la chaudi&egrave;re</li>
<li>le rendement de la chaudi&egrave;re suivant une courbe de rendement (<i>effCur</i>)</li>
<li>la consommation de gaz</li>
<li>la consommation &eacute;lectrique (avec des valeurs diff&eacute;rentes &agrave; charge nulle <i>PElec_arret</i> et en nominal <i>PElec_nom</i>)</li>
</ul>
</html>"));
end chaudiere;

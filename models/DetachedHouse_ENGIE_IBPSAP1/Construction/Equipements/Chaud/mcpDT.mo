within DetachedHouse_ENGIE_IBPSAP1.Construction.Equipements.Chaud;
model mcpDT

parameter Modelica.SIunits.SpecificHeatCapacity cpWater=4186
    "Heat capacity of the fluid";

  Modelica.Blocks.Interfaces.RealInput m_flow(final unit="kg/s")
    "Mass flow rate"
    annotation (Placement(transformation(extent={{-140,44},{-100,84}})));
  Modelica.Blocks.Interfaces.RealInput T_in "Entering temperature"
    annotation (Placement(transformation(extent={{-140,-38},{-100,2}})));
  Modelica.Blocks.Interfaces.RealInput T_out "Leaving temperature"
    annotation (Placement(transformation(extent={{-140,-90},{-100,-50}})));
 Modelica.Blocks.Interfaces.RealOutput P(final unit="W") "Necessary power"
    annotation (Placement(transformation(extent={{100,-10},{120,10}},
        rotation=0)));

equation
  P=m_flow*cpWater*abs(T_out-T_in);

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
                                         Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid), Text(
          extent={{-78,46},{80,-42}},
          lineColor={0,0,255},
          textStyle={TextStyle.Bold},
          textString="P=mCpDT")}),
    Documentation(info="<html>
<p>Bloc permettant de calculer une puissance &eacute;mise par un fluide qui circule.</p>
</html>"));
end mcpDT;

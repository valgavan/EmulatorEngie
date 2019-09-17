model wrapped "Wrapped model"
	// Input overwrite
	Modelica.Blocks.Interfaces.RealInput regul_SDB_oveTsetCoo_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.BooleanInput regul_SDB_oveTsetCoo_activate "Activation for Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.RealInput conHeaRoom1_oveTsetHea_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaRoom1_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput regul_Couloir_ovePCoo_u(unit="W", min=-10000.0, max=0.0) "Precribed cooling power";
	Modelica.Blocks.Interfaces.BooleanInput regul_Couloir_ovePCoo_activate "Activation for Precribed cooling power";
	Modelica.Blocks.Interfaces.RealInput Boiler_oveBoi_u(unit="1", min=0.0, max=1.0) "Boiler control signal";
	Modelica.Blocks.Interfaces.BooleanInput Boiler_oveBoi_activate "Activation for Boiler control signal";
	Modelica.Blocks.Interfaces.RealInput regul_Chaudiere_Securite_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chaudiere_Securite_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput regul_Chaudiere_Securite_oveTsetHea_u(unit="K", min=283.15, max=368.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chaudiere_Securite_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput regul_Salon_ovePCoo_u(unit="W", min=-10000.0, max=0.0) "Precribed cooling power";
	Modelica.Blocks.Interfaces.BooleanInput regul_Salon_ovePCoo_activate "Activation for Precribed cooling power";
	Modelica.Blocks.Interfaces.RealInput regul_Chambre1_oveTsetCoo_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chambre1_oveTsetCoo_activate "Activation for Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.RealInput regul_Chambre3_oveTsetCoo_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chambre3_oveTsetCoo_activate "Activation for Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.RealInput conHeaBathroom_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaBathroom_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput regul_Chambre2_ovePCoo_u(unit="W", min=-10000.0, max=0.0) "Precribed cooling power";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chambre2_ovePCoo_activate "Activation for Precribed cooling power";
	Modelica.Blocks.Interfaces.RealInput regul_Salon_oveTsetCoo_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.BooleanInput regul_Salon_oveTsetCoo_activate "Activation for Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.RealInput regul_Couloir_oveTsetCoo_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.BooleanInput regul_Couloir_oveTsetCoo_activate "Activation for Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.RealInput regul_Chambre3_ovePCoo_u(unit="W", min=-10000.0, max=0.0) "Precribed cooling power";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chambre3_ovePCoo_activate "Activation for Precribed cooling power";
	Modelica.Blocks.Interfaces.RealInput con_pumHea_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput con_pumHea_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaBoiler_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaBoiler_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput con_pumHea_oveTsetHea_u(unit="K", min=283.15, max=368.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput con_pumHea_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaLivingRoom_oveTsetHea_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaLivingRoom_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput regul_Chambre1_ovePCoo_u(unit="W", min=-10000.0, max=0.0) "Precribed cooling power";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chambre1_ovePCoo_activate "Activation for Precribed cooling power";
	Modelica.Blocks.Interfaces.RealInput regul_SDB_ovePCoo_u(unit="W", min=-10000.0, max=0.0) "Precribed cooling power";
	Modelica.Blocks.Interfaces.BooleanInput regul_SDB_ovePCoo_activate "Activation for Precribed cooling power";
	Modelica.Blocks.Interfaces.RealInput conHeaRoom3_oveTsetHea_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaRoom3_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaLivingRoom_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaLivingRoom_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaRoom1_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaRoom1_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaRoom2_oveTsetHea_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaRoom2_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaRoom3_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaRoom3_oveActHea_activate "Activation for Actuator signal for heating";
	Modelica.Blocks.Interfaces.RealInput regul_Chambre2_oveTsetCoo_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.BooleanInput regul_Chambre2_oveTsetCoo_activate "Activation for Zone temperature setpoint for cooling";
	Modelica.Blocks.Interfaces.RealInput conHeaBoiler_oveTsetHea_u(unit="K", min=283.15, max=368.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaBoiler_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaBathroom_oveTsetHea_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaBathroom_oveTsetHea_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput conHeaRoom2_oveActHea_u(unit="1", min=0.0, max=1.0) "Actuator signal for heating";
	Modelica.Blocks.Interfaces.BooleanInput conHeaRoom2_oveActHea_activate "Activation for Actuator signal for heating";
	// Out read
	Modelica.Blocks.Interfaces.RealOutput Salon_heaGai_reaTot_y(unit="W") = mod.Salon.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput regul_Couloir_reaPcoo_y(unit="W") = mod.regul_Couloir.reaPcoo.y "Cooling electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput Couloir_heaGai_reaRad_y(unit="W") = mod.Couloir.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput reaTCooSetZone1_y(unit="K") = mod.reaTCooSetZone1.y "Zone setpoint temperature";
	Modelica.Blocks.Interfaces.RealOutput Couloir_heaGai_reaTot_y(unit="W") = mod.Couloir.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre3_heaGai_reaRad_y(unit="W") = mod.Chambre3.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre1_heaGai_reaCon_y(unit="W") = mod.Chambre1.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput regul_SDB_reaPcoo_y(unit="W") = mod.regul_SDB.reaPcoo.y "Cooling electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput Garage_heaGai_reaCon_y(unit="W") = mod.Garage.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput SDB_heaGai_reaCon_y(unit="W") = mod.SDB.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre2_heaGai_reaRad_y(unit="W") = mod.Chambre2.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput SDB_heaGai_reaLat_y(unit="W") = mod.SDB.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre3_heaGai_reaCon_y(unit="W") = mod.Chambre3.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput Salon_heaGai_reaLat_y(unit="W") = mod.Salon.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput conHeaBathroom_reaTzon_y(unit="K") = mod.conHeaBathroom.reaTzon.y "Zone temperature";
	Modelica.Blocks.Interfaces.RealOutput Boiler_reaPhea_y(unit="W") = mod.Boiler.reaPhea.y "Boilerthermal energy usage";
	Modelica.Blocks.Interfaces.RealOutput Salon_heaGai_reaRad_y(unit="W") = mod.Salon.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre1_heaGai_reaRad_y(unit="W") = mod.Chambre1.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput Couloir_heaGai_reaCon_y(unit="W") = mod.Couloir.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre3_heaGai_reaLat_y(unit="W") = mod.Chambre3.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput Couloir_heaGai_reaLat_y(unit="W") = mod.Couloir.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput q_conv_Nuit_reaConOcc_y(unit="W/m2") = mod.q_conv_Nuit.reaConOcc.y "Convective heat gains";
	Modelica.Blocks.Interfaces.RealOutput Garage_heaGai_reaTot_y(unit="W") = mod.Garage.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput Combles_heaGai_reaCon_y(unit="W") = mod.Combles.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput SDB_heaGai_reaRad_y(unit="W") = mod.SDB.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput regul_Chambre2_reaPcoo_y(unit="W") = mod.regul_Chambre2.reaPcoo.y "Cooling electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput SDB_heaGai_reaTot_y(unit="W") = mod.SDB.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre2_heaGai_reaCon_y(unit="W") = mod.Chambre2.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput regul_Chambre1_reaPcoo_y(unit="W") = mod.regul_Chambre1.reaPcoo.y "Cooling electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput Salon_heaGai_reaCon_y(unit="W") = mod.Salon.heaGai.reaCon.y "Convective internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre1_heaGai_reaTot_y(unit="W") = mod.Chambre1.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput ventil_Salon_rearelHum_y(unit="1") = mod.ventil_Salon.rearelHum.y "Zone relative humidity";
	Modelica.Blocks.Interfaces.RealOutput reaTHeaSetZone_y(unit="K") = mod.reaTHeaSetZone.y "Zone setpoint temperature";
	Modelica.Blocks.Interfaces.RealOutput regul_Chambre3_reaPcoo_y(unit="W") = mod.regul_Chambre3.reaPcoo.y "Cooling electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput conHeaLivingRoom_reaTzon_y(unit="K") = mod.conHeaLivingRoom.reaTzon.y "Zone temperature";
	Modelica.Blocks.Interfaces.RealOutput Combles_heaGai_reaTot_y(unit="W") = mod.Combles.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput Boiler_reaPpum_y(unit="W") = mod.Boiler.reaPpum.y "Boiler pump electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput Chambre1_heaGai_reaLat_y(unit="W") = mod.Chambre1.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput Combles_heaGai_reaRad_y(unit="W") = mod.Combles.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput Garage_heaGai_reaLat_y(unit="W") = mod.Garage.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput Combles_heaGai_reaLat_y(unit="W") = mod.Combles.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput Garage_heaGai_reaRad_y(unit="W") = mod.Garage.heaGai.reaRad.y "Radiative internal gains";
	Modelica.Blocks.Interfaces.RealOutput conHeaRoom3_reaTzon_y(unit="K") = mod.conHeaRoom3.reaTzon.y "Zone temperature";
	Modelica.Blocks.Interfaces.RealOutput q_conv_Jour_reaConOcc_y(unit="W/m2") = mod.q_conv_Jour.reaConOcc.y "Convective heat gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre2_heaGai_reaTot_y(unit="W") = mod.Chambre2.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput Chambre2_heaGai_reaLat_y(unit="W") = mod.Chambre2.heaGai.reaLat.y "Latent internal gains";
	Modelica.Blocks.Interfaces.RealOutput regul_Salon_reaPcoo_y(unit="W") = mod.regul_Salon.reaPcoo.y "Cooling electrical power consumption";
	Modelica.Blocks.Interfaces.RealOutput conHeaRoom1_reaTzon_y(unit="K") = mod.conHeaRoom1.reaTzon.y "Zone temperature";
	Modelica.Blocks.Interfaces.RealOutput Chambre3_heaGai_reaTot_y(unit="W") = mod.Chambre3.heaGai.reaTot.y "Total internal gains";
	Modelica.Blocks.Interfaces.RealOutput conHeaRoom2_reaTzon_y(unit="K") = mod.conHeaRoom2.reaTzon.y "Zone temperature";
	// Original model
	DetachedHouse_ENGIE_IBPSAP1.DetachedHouse_ENGIE_IBPSAP1_BOPTEST_v3 mod(
		regul_SDB.oveTsetCoo(uExt(y=regul_SDB_oveTsetCoo_u),activate(y=regul_SDB_oveTsetCoo_activate)),
		conHeaRoom1.oveTsetHea(uExt(y=conHeaRoom1_oveTsetHea_u),activate(y=conHeaRoom1_oveTsetHea_activate)),
		regul_Couloir.ovePCoo(uExt(y=regul_Couloir_ovePCoo_u),activate(y=regul_Couloir_ovePCoo_activate)),
		Boiler.oveBoi(uExt(y=Boiler_oveBoi_u),activate(y=Boiler_oveBoi_activate)),
		regul_Chaudiere_Securite.oveActHea(uExt(y=regul_Chaudiere_Securite_oveActHea_u),activate(y=regul_Chaudiere_Securite_oveActHea_activate)),
		regul_Chaudiere_Securite.oveTsetHea(uExt(y=regul_Chaudiere_Securite_oveTsetHea_u),activate(y=regul_Chaudiere_Securite_oveTsetHea_activate)),
		regul_Salon.ovePCoo(uExt(y=regul_Salon_ovePCoo_u),activate(y=regul_Salon_ovePCoo_activate)),
		regul_Chambre1.oveTsetCoo(uExt(y=regul_Chambre1_oveTsetCoo_u),activate(y=regul_Chambre1_oveTsetCoo_activate)),
		regul_Chambre3.oveTsetCoo(uExt(y=regul_Chambre3_oveTsetCoo_u),activate(y=regul_Chambre3_oveTsetCoo_activate)),
		conHeaBathroom.oveActHea(uExt(y=conHeaBathroom_oveActHea_u),activate(y=conHeaBathroom_oveActHea_activate)),
		regul_Chambre2.ovePCoo(uExt(y=regul_Chambre2_ovePCoo_u),activate(y=regul_Chambre2_ovePCoo_activate)),
		regul_Salon.oveTsetCoo(uExt(y=regul_Salon_oveTsetCoo_u),activate(y=regul_Salon_oveTsetCoo_activate)),
		regul_Couloir.oveTsetCoo(uExt(y=regul_Couloir_oveTsetCoo_u),activate(y=regul_Couloir_oveTsetCoo_activate)),
		regul_Chambre3.ovePCoo(uExt(y=regul_Chambre3_ovePCoo_u),activate(y=regul_Chambre3_ovePCoo_activate)),
		con_pumHea.oveActHea(uExt(y=con_pumHea_oveActHea_u),activate(y=con_pumHea_oveActHea_activate)),
		conHeaBoiler.oveActHea(uExt(y=conHeaBoiler_oveActHea_u),activate(y=conHeaBoiler_oveActHea_activate)),
		con_pumHea.oveTsetHea(uExt(y=con_pumHea_oveTsetHea_u),activate(y=con_pumHea_oveTsetHea_activate)),
		conHeaLivingRoom.oveTsetHea(uExt(y=conHeaLivingRoom_oveTsetHea_u),activate(y=conHeaLivingRoom_oveTsetHea_activate)),
		regul_Chambre1.ovePCoo(uExt(y=regul_Chambre1_ovePCoo_u),activate(y=regul_Chambre1_ovePCoo_activate)),
		regul_SDB.ovePCoo(uExt(y=regul_SDB_ovePCoo_u),activate(y=regul_SDB_ovePCoo_activate)),
		conHeaRoom3.oveTsetHea(uExt(y=conHeaRoom3_oveTsetHea_u),activate(y=conHeaRoom3_oveTsetHea_activate)),
		conHeaLivingRoom.oveActHea(uExt(y=conHeaLivingRoom_oveActHea_u),activate(y=conHeaLivingRoom_oveActHea_activate)),
		conHeaRoom1.oveActHea(uExt(y=conHeaRoom1_oveActHea_u),activate(y=conHeaRoom1_oveActHea_activate)),
		conHeaRoom2.oveTsetHea(uExt(y=conHeaRoom2_oveTsetHea_u),activate(y=conHeaRoom2_oveTsetHea_activate)),
		conHeaRoom3.oveActHea(uExt(y=conHeaRoom3_oveActHea_u),activate(y=conHeaRoom3_oveActHea_activate)),
		regul_Chambre2.oveTsetCoo(uExt(y=regul_Chambre2_oveTsetCoo_u),activate(y=regul_Chambre2_oveTsetCoo_activate)),
		conHeaBoiler.oveTsetHea(uExt(y=conHeaBoiler_oveTsetHea_u),activate(y=conHeaBoiler_oveTsetHea_activate)),
		conHeaBathroom.oveTsetHea(uExt(y=conHeaBathroom_oveTsetHea_u),activate(y=conHeaBathroom_oveTsetHea_activate)),
		conHeaRoom2.oveActHea(uExt(y=conHeaRoom2_oveActHea_u),activate(y=conHeaRoom2_oveActHea_activate))) "Original model with overwrites";
end wrapped;
//
// Vehicle Cruise Control Mod
// By Allen modified by Jennova
//

mod_cruiseControl = 
compileFinal "
	_triggerX = createTrigger [""EmptyDetector"", [0,0,0]];
	_triggerX setTriggerArea [0, 0, 0, false];
	_triggerX setTriggerActivation [""NONE"", ""PRESENT"", true];
	_triggerX setTriggerStatements [""('Car' countType [(vehicle player)] > 0)"",
	""uwg_cruise = vehicle player;
	uwg_cruise_control = uwg_cruise addAction ['Régulateur de vitesse','["""""""",call mod_cruiseControlMenu,player,false] spawn BIS_fnc_MP;',[], 0, false, false, '', 'driver uwg_cruise == player'];"",
	""uwg_cruise removeAction uwg_cruise_control; uwg_cruise = nil;""];
";
publicVariable "mod_cruiseControl";

mod_cruiseControlMenu =
compileFinal "
	cruiseControlSet = false;	
	_velocity = velocity uwg_cruise;
	_x = _velocity select 0;
	_y = _velocity select 1;
	_xy = round(sqrt ( _x*_x + _y*_y ) * 3.6);
	_Vitesse = 50;
	cspeed = 0;
	
	if (_xy > _Vitesse) then {
		cspeed = _xy;
		cruiseControlSet = true;
		hint parseText format [""
					<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'>Régulateur de vitesse</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Régulateur de vitesse:</t><t size='0.90 'font='puristaLight' align='left' color='#33CC00'> Activé</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Vérrouillage à:</t><t size='0.90' font='puristaLight'align='right' color='#0D82DF'> %1 km/h</t><br/>
					<t size='0.90' font='puristaLight' align='left' color='#CC9900'>Pour désactiver freinez avec [S]</t><br/><br/>
					<t size='1.10' font='puristaLight' align='left' color='#0D82DF'></t><br/>"", _xy
				];
	} else {
		hint parseText format [""
					<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'>Régulateur de vitesse</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Contrôle de vitesse:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Désactivé</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Ne s'active pas en dessous de %1 km/h.</t><br/>
					<t size='1.10' font='puristaLight' align='left' color='#0D82DF'></t><br/>"", _Vitesse
				];
	};
	
	if (!cruiseControlSet) then {
		hint parseText format [""
					<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'>Régulateur de vitesse</t><br/><br/>
					<t size='0.90 'font='puristaLight' align='left'>Contrôle de vitesse:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Désactivé</t><br/><br/>
					<t size='0.90' font='puristaLight' align='left' color='#0D82DF'>Ne s'active pas en dessous de %1 km/h.</t><br/>
					<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'></t><br/>"", _Vitesse
				]; 
	} else {
		uwg_cruise removeAction uwg_cruise_control;
		(findDisplay 46) displayAddEventHandler [""KeyDown"",""
			_keyDown = _this select 1;
			if (_keyDown == 0x1F) then {
				if (cruiseControlSet) then {
					uwg_cruise_control = uwg_cruise addAction ['Régulateur de vitesse','["""""""",call mod_cruiseControlMenu,player,false] spawn BIS_fnc_MP;',[], 0, false, false, '', 'driver uwg_cruise == player'];
					cruiseControlSet = false;
					hint parseText format [""""
								<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'>Régulateur de vitesse</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Régulateur de vitesse:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Désactivé</t><br/><br/>
								<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'></t><br/>""""
							];
				};
			};""];
	};
	
	while {cruiseControlSet} do {
	
		if (getDammage uwg_cruise > 0.1) exitWith {
			cruiseControlSet = false;
			hint parseText format [""
								<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'>Régulateur de vitesse</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Régulateur de vitesse:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Désactivé</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Le véhicule est trop endommagé pour utiliser le régulateur de vitesse, réparez le véhicule.<br/><br/>
								<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'></t><br/>""
							];
		};
		
		if (fuel uwg_cruise < 0.1) exitWith {
			cruiseControlSet = false;
			hint parseText format [""
								<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'>Régulateur de vitesse</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Régulateur de vitesse:</t><t size='0.90 'font='puristaLight' align='left' color='#990000'> Désactivé</t><br/><br/>
								<t size='0.90 'font='puristaLight' align='left'>Le véhicule ne possède pas assez de carburant.<br/><br/>
								<t size='1.10' font='puristaMedium' align='left' color='#0D82DF'></t><br/>""
							];
		};
		
		_dir = getDir uwg_cruise;
		_newX = (sin _dir)*(cspeed/3.6);
		_newY = (cos _dir)*(cspeed/3.6);
		uwg_cruise setVelocity [_newX, _newY, (velocity uwg_cruise) select 2];
		sleep 0.03;
	};
";
publicVariable "mod_cruiseControlMenu";
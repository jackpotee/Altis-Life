/* 
	licensesShop
*/
// addAction args: title, filename, (arguments, priority, showWindow, hideOnUse, shortcut, condition, positionInModel, radius, radiusView, showIn3D, available, textDefault, textToolTip)
_this allowDamage false;  
_this enableSimulation false; 
//Driver
_this addAction[format["<t color='#00ffff'>Achat: %1</t>  <t color='#AAF200'>(%2€)</t>",["license_civ_driver"] call life_fnc_varToStr,[(["driver"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_buyLicense,"driver",0,false,false,"",' !license_civ_driver && playerSide == civilian '];
//Boat
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_boat"] call life_fnc_varToStr,[(["boat"] call life_fnc_licensePrice)] call life_fnc_numberText],
life_fnc_buyLicense,"boat",0,false,false,"",' !license_civ_boat && playerSide == civilian '];
//Air
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_air"] call life_fnc_varToStr,[(["pilot"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_buyLicense,"pilot",0,false,false,"",' !license_civ_air && playerSide == civilian '];
//Truck
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€)</t>",["license_civ_truck"] call life_fnc_varToStr,[(["truck"] call life_fnc_licensePrice)] call life_fnc_numberText],
  life_fnc_buyLicense,"truck",0,false,false,"",' !license_civ_truck && playerSide == civilian '];
//House
_this addAction[format["<t color='#00ffff'>Achat: %1</t> <t color='#AAF200'>(%2€))</t>",["license_civ_home"] call life_fnc_varToStr,[(["home"] call life_fnc_licensePrice)]
 call life_fnc_numberText],life_fnc_buyLicense,"home",0,false,false,"",' !license_civ_home && playerSide == civilian '];
 

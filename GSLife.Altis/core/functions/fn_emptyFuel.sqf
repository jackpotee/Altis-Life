/*
      Created by Mokomoko
      Date: 04.08.2014
	  fn_emptyfuel.sqf
      Related Forum Post: http://www.altisliferpg.com/topic/4812-tutorial-how-to-increase-the-fuel-usage/
      Edited by bondz
*/

private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption"];

while{true} do
{
    _vehicleToFuel = (vehicle player);

    
    if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && (_vehicleToFuel != player) ) then
    {
        _velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
        
        /*
        switch (typeOf (_vehicleToFuel)) do {
            case "B_Quadbike_01_F":{_fuelConsumption = _velocityOfVehicle/1000 + 0.0001;}; //Here you can add some other vehicles.
            case "C_Hatchback_01_F":{_fuelConsumption = _velocityOfVehicle/1000 + 0.0001;};
		    default {_fuelConsumption = _velocityOfVehicle/1000 + 0.0001;}
        };
		*/
		_fuelConsumption = _velocityOfVehicle/150000 + 0.0001;
        
        if(_fuelConsumption > 0.002) then
        {
            _fuelConsumption = 0.002;
        };
        _vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
        
        //hint format["Consommation: %1L/km",_fuelConsumption*10000/2];

        if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then
        {
            hint "Tu n'as presque plus d'essence. Dépêche toi de faire le plein!";
        }
        else
        {
            if(fuel _vehicleToFuel < 0.03) then
            {
                hint "J'espere que tu sais courire - car c'est la panne sèche dans peu de temps!";
            };
        };
    };
    sleep 2;
};
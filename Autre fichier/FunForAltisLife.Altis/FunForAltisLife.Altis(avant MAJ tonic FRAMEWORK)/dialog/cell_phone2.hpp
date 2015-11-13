class Impulsion_Phone_dialog
{
        idd=3000;
        name= "life_cell_phone1";
        movingenable=false;
        enableSimulation = true;
        onLoad = "[] spawn life_fnc_cellphone";
       
        class controls
        {
 
        class TelFond: life_RscPicture
{
        idc = 1200;
        text = "icons\cell_phone.paa";
        x = 0.414583 * safezoneW + safezoneX;
        y = 0.191666 * safezoneH + safezoneY;
        w = 0.169377 * safezoneW;
        h = 0.573521 * safezoneH;
};
class ImgBtMenu: life_RscPicture
{
        idc = 1201;
        text = "";
        onButtonClick = "";
        x = 0.490234 * safezoneW + safezoneX;
        y = 0.691574 * safezoneH + safezoneY;
        w = 0.0203776 * safezoneW;
        h = 0.0321296 * safezoneH;
};
class inputMsg: Life_RscEdit
{
        idc = 3003;
        text ="";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.32125 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class btSms: life_RscButtonMenu
{
        idc = 3015;
        colorBackground[] = {0.5, 0, 0, 0.5};
        onButtonClick = "[] call TON_fnc_cell_textmsg";
        text = "SMS";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.40375 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class TextCopButton: life_RscButtonMenu
{
        idc = 3016;
        //text = "$STR_CELL_TextPolice";
        colorBackground[] = {0.5, 0, 0, 0.5};
        text = "Police";
        onButtonClick = "[] call TON_fnc_cell_textcop";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.445 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class btToSec: life_RscButtonMenu
{
        idc = 3022;
        text = "Secouriste";
        colorBackground[] = {0.5, 0, 0, 0.5};
        onButtonClick = "[] call TON_fnc_cell_emsrequest";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.48625 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class BtToAdmin: life_RscButtonMenu
{
        idc = 3017;
        text = "Admin";
        colorBackground[] = {0.5, 0, 0, 0.5};
        onButtonClick = "[] call TON_fnc_cell_textadmin";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.5275 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class btGlobalAdmin: life_RscButtonMenu
{
        idc = 3021;
        colorBackground[] = {0.5, 0, 0, 0.5};
        onButtonClick = "[] call TON_fnc_cell_adminmsgall";
        text = "Global Admin";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.56875 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class DepRequest: life_RscButtonMenu
{
        idc = 3023;
        text = "Dépanneur";
        colorBackground[] = {0.5, 0, 0, 0.5};
        onButtonClick = "[] call TON_fnc_cell_deprequest";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.61 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
class PlayerList: Life_RscCombo
{
        idc = 3004;
        text="";
        x = 0.435547 * safezoneW + safezoneX;
        y = 0.3625 * safezoneH + safezoneY;
        w = 0.128906 * safezoneW;
        h = 0.0275 * safezoneH;
};
 
 
 
       
};
};
	#define COLOR_HALF_BLACK { 0, 0, 0, 0.5 }

	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{

			class foodHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "textures\hud\faim.paa";
				x = safeZoneX+safeZoneW-0.205; y = safeZoneY+safeZoneH-0.637;
				w = 0.05; h = 0.06;
				colorBackground[] = COLOR_HALF_BLACK;
			};
			
			class waterHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "textures\hud\soif.paa";
				x = safeZoneX+safeZoneW-0.205; y = safeZoneY+safeZoneH-0.576;
				w = 0.05; h = 0.06;
				colorBackground[] = COLOR_HALF_BLACK;
			};
			
			class healthHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "textures\hud\vie.paa";
				x = safeZoneX+safeZoneW-0.205; y = safeZoneY+safeZoneH-0.513;
				w = 0.05; h = 0.06;
				colorBackground[] = COLOR_HALF_BLACK;
			};

			class moneyHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "textures\hud\argent.paa";
				x = safeZoneX+safeZoneW-0.205; y = safeZoneY+safeZoneH-0.450;
				w = 0.05; h = 0.06;
				colorBackground[] = COLOR_HALF_BLACK;
			};
		};
		
		class controls
		{
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[] = COLOR_HALF_BLACK;
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[] = COLOR_HALF_BLACK;
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class healthtext
			{
				type=0;
				idc=23515;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[] = COLOR_HALF_BLACK;
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class moneytext
			{
				type=0;
				idc=23520;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[] = COLOR_HALF_BLACK;
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	};
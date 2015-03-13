/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, Default, Min, Max, changes in action, [Sales multiplied by 1, Purchase multiplied by -1]
	//["gold", 1500, 450, 2300, 8, 5],
	
	["oilp", 1700, 800, 2200, 3, 2,
		[
			["diamondc",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		]
	],
	
	["iron_r", 1800, 800, 2400, 3, 2,  
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["diamondc", 2100, 950, 2400, 3, 2, 
		[ 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["copper_r", 1100, 750, 1650, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["salt_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["salt_r", 1350, 750, 1750, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["cement",1],
			["glass",1]
		] 
	],
	
	["glass", 1450, 750, 1850, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["cement",1]
		] 
	],
	
	["cement", 1300, 950, 1900, 3, 2,
		[ 
			["diamondc",1], 
			["oilp",1],
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1]
		] 
	],

	["turtle", 8000, 0, 25000, 4, 3,  
		[ 
			["marijuana",1], 
			["cocainep",1],
			["heroinp",1]
		] 
	],
	
	["marijuana", 3200, 2400, 5600, 4, 3,   
		[ 
			["turtle",1], 
			["cocainep",1],
			["heroinp",1]
		]
	],
	
	["cocainep", 3300, 2500, 5600, 4, 3,   
		[ 
			["marijuana",1], 
			["turtle",1],
			["heroinp",1]
		] 
	],
	
	["heroinp", 3100, 2300, 5600, 4, 3,   
		[ 
			["marijuana",1], 
			["cocainep",1],
			["turtle",1]
		] 
	]
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

//SYNC PRICES WITH SERVER IF EMPTY
if(isNil("life_market_prices")) then
{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
};
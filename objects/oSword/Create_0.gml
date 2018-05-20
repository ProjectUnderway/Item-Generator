/// @description Insert description here
// You can write your code in this editor

event_inherited();

sprite_index = sSword;

type = itemType.sword;


length =0;
width =0;
height =0;
damage =0;
sharpness =0;
swingSpeed =0;


material = choose(weaponMaterial.copper, weaponMaterial.steel);

switch(material)
{
	case weaponMaterial.copper:
		//Pounds Per *Cubic Foot of copper (559.87)
		weight = 660;
	break;

	case weaponMaterial.steel:
		//Pounds Per *Cubic Foot of steel (494.2)
		weight = 495;
	break;
}

//cm converted to feet
length = irandom_range(10,200) * 0.0328084;
//cm converted to feet
width = irandom_range(1,40) * 0.0328084;
//cm converted to feet
height = irandom_range(1,20) * 0.0328084;
weight = (((length * width * height )/ 1728) * weight);	
sharpness = irandom_range(1,10);
//higher is lower
swingSpeed = weight*length;
damage = irandom_range(1,1000) * (swingSpeed / 10) ;
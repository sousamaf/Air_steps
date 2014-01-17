/*
	gMake
	1 = Copo modelix
	2 = Base fixadora modelix
	3 = Base de haste fragil
	4 = Base de fixacao de servo
*/

gMake = 1;


/*
	true = para exibir furos de fixacao
	false = para não exibir furos de fixacao
*/
gMakeHorn = false; 

fn = 100;

joinfactor = 0.125;
goldenratio = 1.61803399;

gSleeveWidth = 18;
//gSleeveWidth = 8;
gServoWidth = 20.25;
gServoLength = 41;
gWallThickness = 2.5;
gTabLength = 7.5;
gDefaultMountHoleRadius = 3/2*1.05; 


gDistance = 60;
gThickness = 8;


//gHornDiameter = 19; 	// For pololu universal shaft mount
gHornDiameter = 20.5;		// For round servo horn 
gHornRadius = gHornDiameter/2;
gHornThickness = 5;

gMountThickness = 3; 

gPrimaryIR = gHornRadius*1.4; 
gPrimaryOR = gHornRadius * goldenratio;

gPrimaryLength = 12.5;

//gBearingIR = 11; 				// For 608 Bearing
//gBearingOR = gBearingIR*goldenratio;
gBearingIR =  9.57/2; 
gBearingOR = gBearingIR*goldenratio;
gBearingWidth = 2; 
//gBearingThickness = gBearingWidth*goldenratio;
gBearingThickness = gBearingWidth*goldenratio;

//ballarm(gPrimaryIR, gPrimaryOR, gBearingIR*1.02, gBearingOR, gDistance, gThickness);
//servomounttube(gPrimaryIR, gPrimaryOR, 4, gMountThickness);
//shaftmounttube(gPrimaryIR, gPrimaryOR, gPrimaryLength, gMountThickness);
if(gMake == 3){
	thinarm(gPrimaryIR, gPrimaryOR, gBearingIR*1.02, gBearingOR, gDistance, gThickness);
}

if(gMake == 2)
{
	thinmodelixarm(gPrimaryIR, gPrimaryOR, gBearingIR*1.02, gBearingOR, gDistance, gThickness);
}
if(gMake == 1)
{
	thinmodelixbandeja(gPrimaryIR, gPrimaryOR, gBearingIR*1.02, gBearingOR, gDistance, gThickness);
}

if(gMake == 4)
{
	thinservoarm(gPrimaryIR, gPrimaryOR, gBearingIR*1.02, gBearingOR, gDistance, gThickness);
}
//rotate([0,0,45])
//thinservoarm(gPrimaryIR, gPrimaryOR, gBearingIR*1.02, gBearingOR, gDistance, gThickness);

module servosleeve(servowidth, servolength, sleeveheight, wallthickness) 
{
	OuterLength = servolength+wallthickness*2;
	OuterWidth = servowidth+wallthickness*2;
	OuterHeight = sleeveheight;

	translate([0, servowidth/2+wallthickness, sleeveheight/2])
	union()
	{
		difference()
		{
			cube(size=[OuterLength, OuterWidth, OuterHeight], center=true);
			
			// Subtract the inner square
			cube(size=[servolength, servowidth, OuterHeight+joinfactor*2], center=true);
	
			// Subtract an opening at the top so it can slip in more easily
			translate([0, (OuterWidth/2)-wallthickness/2, 0])
			cube(size=[servolength/goldenratio, wallthickness+2*joinfactor, OuterHeight+joinfactor*10], center=true);
		}

		// Add the mounting tabs
		translate([(-OuterLength/2)-(gTabLength/2)+joinfactor, 0, 0])
		rotate([0, 0, -90])
		mountingtab(gServoWidth, gTabLength, OuterHeight);

		translate([(OuterLength/2)+(gTabLength/2)-joinfactor, 0, 0])
		rotate([0, 0, 90])
		mountingtab(gServoWidth, gTabLength, OuterHeight);

	}
}

module mountingtab(width, depth, thickness)
{
	mountholeradius = gDefaultMountHoleRadius;

	difference()
	{
		cube(size=[width, depth, thickness], center=true);
	
		translate([9.5/2, depth/2-mountholeradius-0.25, 0])
		cylinder(r=mountholeradius, h=thickness+joinfactor*2, center=true, $fn=12);

		translate([-9.5/2, depth/2-mountholeradius-0.25, 0])
		cylinder(r=mountholeradius, h=thickness+joinfactor*2, center=true, $fn=12);
	}
}


module servomounttube(primaryIR, primaryOR, primaryLength, mountThickness)
{
	shaftholeradius = 10/2;

	mountholeradius = 1.3/2*1.05; 
	mountholeoffset = 7.5;
	primarywallthickness = primaryOR-primaryIR;

	difference()
	{
		// Big cylinder to allow for mount connection
		cylinder(r= primaryOR, h=primaryLength);

		// Slice out the motor mount
		// The big open hole 
		translate([0, 0, mountThickness])
		cylinder(r=primaryIR, h=gPrimaryLength+joinfactor);

		// A hole for the motor shaft 
		translate([0, 0, -joinfactor])
		cylinder(r=shaftholeradius, h=mountThickness+2*joinfactor, $fn=12);

		// Put in the holes that will connect to the motor horn
		for(hole=[0:3])
		{
			rotate([0, 0, (hole*90)])
			translate([mountholeoffset,  0, -joinfactor]) 
			cylinder(r=mountholeradius, h=mountThickness+2*joinfactor, $fn=12);

			rotate([0, 0, (hole*90)])
			translate([mountholeoffset,  6.5/2, -joinfactor]) 
			cylinder(r=mountholeradius, h=mountThickness+2*joinfactor, $fn=12);

			rotate([0, 0, (hole*90)])
			translate([mountholeoffset,  -6.5/2, -joinfactor]) 
			cylinder(r=mountholeradius, h=mountThickness+2*joinfactor, $fn=12);
		}
	}
}

module shaftmounttube(primaryIR, primaryOR, primaryLength, mountThickness)
{
	mountholeradius = 2.2/2*1.05; 
	mountholeoffset = 6.35;
	primarywallthickness = primaryOR-primaryIR;

	difference()
	{
		// Big cylinder to allow for mount connection
		if(gMake == 1)
		{
			cylinder(r= primaryOR, h=gPrimaryLength-4, $fn=fn);
		} else
		{
			cylinder(r= primaryOR, h=gPrimaryLength-8.1, $fn=fn);
		}

		// Slice out the motor mount
		// The big open hole 
		translate([0, 0, gMountThickness])
		cylinder(r=primaryIR, h=gPrimaryLength+joinfactor, $fn=fn);

		if(gMakeHorn)
		{
			// A hole for the motor shaft 
			translate([0, 0, -joinfactor])
			cylinder(r=5/2*1.1, h=mountThickness+2*joinfactor, $fn=12);
	
			// Put in the holes that will connect to the motor horn
			for(hole=[0:3])
			{
				rotate([0, 0, (hole*90)+45])
				translate([mountholeoffset,  0, -joinfactor]) 
				cylinder(r=mountholeradius, h=mountThickness+2*joinfactor, $fn=12);
			}
		}
		
		// Poke a hole opposite cross tube for set screw 
		// on motor horn
/*
		translate([-primaryIR-primarywallthickness/2, 0, mountThickness+(gHornThickness/2)])
		rotate([0, 90, 0])
		cylinder(r=3/2, h=primarywallthickness+joinfactor*2, center=true, $fn=12);
*/
	}
}




module ballarm(primaryIR, primaryOR,  bearingIR, bearingOR, distance, thickness)
{

	armradius = gPrimaryLength/2;
	armlength = distance - primaryIR-bearingIR;

	difference()
	{
		union()
		{
			translate([0, gPrimaryOR-armradius, 0])
			shaftmounttube(primaryIR, primaryOR, gPrimaryLength, gMountThickness);

			difference()
			{
				// The connecting arm
				translate([0, 0, gPrimaryLength/2])
				rotate([0, 90, 0])
				cylinder(r=armradius, distance);

				translate([0, primaryOR-primaryIR, 0])
				cylinder(r=armradius, h = gPrimaryLength);
			}

			// Cylinder to hold roller bearing
			translate([distance, -bearingOR+armradius,0])
			cylinder(r=bearingOR, h = gBearingThickness);
		
		}
		

		// Remove create hole for ball bearing
		translate([distance, -bearingOR+armradius, -joinfactor])
		cylinder(r=bearingIR, h=bearingOR*2);

		// Flatten out the top of the bearing
		translate([distance,-bearingOR+armradius, gBearingThickness])
		cylinder(r=bearingOR*1.1, h = bearingOR*2);


	}
}


module bonespan(length, depth, thickness, radius1, radius2)
{
	shortlength = length/goldenratio;
	shortdepth = depth/goldenratio;

	lengthoffset = (length-shortlength)/2;
	depthoffset = (depth-shortdepth)/2;

	difference()
	{
		cube(size=[length, depth, thickness]);

		translate([lengthoffset, depthoffset, -joinfactor])
		cube(size=[length, shortdepth, thickness+2*joinfactor]);
	}
}

module bonespanmodelix(length, depth, thickness, radius1, radius2)
{
	shortlength = (length/goldenratio);
	shortdepth = (depth/goldenratio);

	lengthoffset = ((length-shortlength)/2);
	depthoffset = depth/2;

	difference()
	{
		cube(size=[length+10, depth, thickness+1.17]);
		union()
		{
			translate([lengthoffset+5-depthoffset/2, depthoffset, -joinfactor])
			cylinder(r=2, h = lengthoffset * 1.55, $fn = 100);

			translate([lengthoffset+15.0-depthoffset/2, depthoffset, -joinfactor])
			cylinder(r=2, h = lengthoffset * 1.55, $fn = 100);

			translate([lengthoffset+28.9-depthoffset/2, depthoffset, -joinfactor])
			cylinder(r=2, h = lengthoffset * 1.55, $fn = 100);

			translate([lengthoffset+39.9-depthoffset/2, depthoffset, -joinfactor])
			cylinder(r=2, h = lengthoffset * 1.55, $fn = 100);

		}
	}
}

module thinarm(primaryIR, primaryOR,  bearingIR, bearingOR, distance, thickness)
{

	armradius = gPrimaryLength/2;
	armlength = distance - primaryIR-bearingIR;

	difference()
	{
		union()
		{
			translate([0, 0, 0])
			shaftmounttube(primaryIR, primaryOR, gPrimaryLength, gMountThickness);

			// The connecting arm
			translate([primaryIR, -armradius, 0])
			bonespan(armlength, armradius*2, gBearingThickness);

			// Cylinder to hold roller bearing
			translate([distance, 0,0])
			cylinder(r=bearingOR, h = gBearingThickness);
		}
		
		// Remove create hole for ball bearing
		translate([distance, 0, -joinfactor])
		cylinder(r=bearingIR, h=bearingOR*2);
	}
}

module thinmodelixarm(primaryIR, primaryOR,  bearingIR, bearingOR, distance, thickness)
{

	armradius = gPrimaryLength/2;
	armlength = distance - primaryIR-bearingIR;

		union()
		{
			translate([0, 0, 0])
			shaftmounttube(primaryIR, primaryOR, gPrimaryLength, gMountThickness);

			// The connecting arm
			translate([primaryIR, -armradius, 0])
			bonespanmodelix(armlength, armradius*2, gBearingThickness);

			// Cylinder to hold roller bearing
			//translate([distance, 0,0])
			//cylinder(r=bearingOR, h = gBearingThickness);
		}
}

module thinmodelixbandeja(primaryIR, primaryOR,  bearingIR, bearingOR, distance, thickness)
{

	armradius = gPrimaryLength/2;
	armlength = distance - primaryIR-bearingIR;

		union()
		{
			translate([0, 0, 0])
			shaftmounttube(primaryIR*1.5+1, primaryOR*1.5+1, gPrimaryLength, gMountThickness);

			// The connecting arm
			translate([primaryIR+10, -armradius, 0])
			bonespanmodelix(armlength, armradius*2, gBearingThickness);
		}
}

module thinservoarm(primaryIR, primaryOR,  bearingIR, bearingOR, distance, thickness){
	armradius = primaryOR/goldenratio;
	armlength = distance - primaryIR-bearingIR;

	difference()
	{
		union()
		{
			translate([0, 0, 0])
			servomounttube(primaryIR, primaryOR, gPrimaryLength, gMountThickness);

			// The connecting arm
			translate([primaryIR, -armradius, 0])
			#bonespan(armlength, armradius*2, gBearingThickness);

			// servo mount
			translate([armlength+gServoLength-gTabLength,-armradius-2.5,  0]) {
				servosleeve(servowidth = gServoWidth, servolength = gServoLength, sleeveheight = gSleeveWidth, wallthickness=gWallThickness);
			}

		}
		
	}
}
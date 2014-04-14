include<cubo.scad>;

//difference()
//{
//	import(file="case_top_arduino.STL");

/*	union() 
	{
		//barra superior == distâncias laterais=[23.5,15.5]
		translate([23.5,55.5,0]) cube([45,4.5,6.0]);

		//barra inferior == distâncias laterais=[31,15.5]
		translate([31.5,15,0]) cube([37,4.5,6.0]);

		//barra lateral == distâncias laterais=[31,15.5]
		translate([61.5,20.0,0]) cube([5,33.5,6.0]);

		//protoboard == distâncias laterais=[23.5,15.5]
		translate([16,19.5,0]) cube([46,36,6.0]);
	}
}
rotate([90,0,0]) translate([62,0,-55.5]) cube([17,6,2.0]);
rotate([90,0,0]) translate([62,0,-21.5]) cube([17,6,2.0]);*/

difference()
{
	union()
	{
		difference()
		{
			rotate([0,180,0]) translate([-80,0,-6]) tampa();
//			import(file="case_top_arduino.STL");
		}
		color("blue") import(file="case_top_arduino.STL");
	}

	translate([-0.5,0.5,0]) union() 
	{
		//barra superior == distâncias laterais=[23.5,15.5]
		translate([24.5,55.5,0]) color("blue") cube([45,4.5,7.0]);

		//barra inferior == distâncias laterais=[31,15.5]
		translate([33.5,15,0]) color("blue") cube([36,4.5,7.0]);

		//barra lateral == distâncias laterais=[31,15.5]
		translate([61.5,17.0,0]) color("blue") cube([5,40,7.0]);
//		translate([61.5,20.0,0]) color("blue") cube([5,35.5,7.0]);

		//protoboard == distâncias laterais=[23.5,15.5]
		translate([16,19.4,0]) color("blue") cube([46,36.2,7.0]);
	}
}
translate([-0.5,0.5,0]) union() 
{
	rotate([90,0,0]) color("blue") translate([62.5,0,-55.5]) cube([17,6,1.5]);
	rotate([90,0,0]) color("blue") translate([62.5,0,-21.0]) cube([17,6,1.5]);
	rotate([90,0,0]) color("blue") translate([62.5,0,-37.5]) cube([17,6,1.5]);
}

module tampa()
{
	difference()
	{
		union()
		{	
			difference()
			{
				color("blue") translate([-0.5,-0.5,0.]) cubo(76,34.4-6,81,1.7);
				color("blue") translate([2.5,2.5,1.0]) cube([75,70,25]);
			}
			color("blue") parafusoCase();
			color("blue") translate([-70,0,0]) parafusoCase();
			color("blue") translate([0,65,0]) parafusoCase();
			color("blue") translate([-70,65,0]) parafusoCase();
		}
		union()
		{
			color("blue") translate([-1.0,-1.0,6.0]) cube([83,77,30]);
			color("blue") translate([75,5,-1.0]) cylinder(5,4.0,4.0, $fn=vertices);
			color("blue") translate([5,5,-1.0]) cylinder(5,4.0,4.0, $fn=vertices);
			color("blue") translate([75,70,-1.0]) cylinder(5,4.0,4.0, $fn=vertices);
			color("blue") translate([5,70,-1.0]) cylinder(5,4.0,4.0, $fn=vertices);
		}
	}
}
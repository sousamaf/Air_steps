difference()
{
	import(file="case_top_arduino.STL");

	union() 
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
rotate([90,0,0]) translate([62,0,-21.5]) cube([17,6,2.0]);
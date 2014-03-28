include<cubo.scad>;

difference()
{
	difference()
	{
		union()
		{
//			color("red") cube([50,19,19]);
			translate([-2,0,0]) cubo(19.0,4,54,2);
			translate([-2,0,15.0]) cubo(19.0,4,54,2);
			rotate([90,0,0]) translate([-2,0,-4.0]) cubo(19.0,4,54,2);
			rotate([90,0,0]) translate([-2,0,-19.0]) cubo(19.0,4,54,2);
		}
		union()
		{
//			translate([-2,0,0]) color("red") cube([2,19,19]);
//			translate([50,0,0]) color("red") cube([2,19,19]);

			translate([6,9.5,-1]) cylinder(21,2.25,2.25,$fn=40);
			translate([50-6,9.5,-1]) cylinder(21,2.25,2.25,$fn=40);
			rotate([90,0,0]) translate([19.5,9.5,-20]) cylinder(21,2.25,2.25,$fn=40);
			rotate([90,0,0]) translate([50-19.5,9.5,-20]) cylinder(21,2.25,2.25,$fn=40);
		}
	}
}
difference()
{
//	cube([50,16.5,16.5]);

//	translate([0,1.25,1.25]) color("red") cube([50,12.5,12.5]);
}

vertices=50;

//MAIN
difference()
{
	difference()
	{
		union()
		{
			translate([1.5,1.5,0]) color("black") cube([47,13.5,2.0]);
			translate([1.5,1.5,14.5]) color("black") cube([47,13.5,2.0]);
			translate([1.5,0,1.5]) color("black") cube([47,2.0,13.5]);
			translate([1.5,14.5,1.5]) color("black") cube([47,2.0,13.5]);
			borda();
			translate([47,0,0]) borda();

			rotate([0,90,0]) translate([-1.5,15.0,1.5]) cylinder(47,1.5,1.5,$fn=vertices);
			rotate([0,90,0]) translate([-15.0,15.0,1.5]) cylinder(47,1.5,1.5,$fn=vertices);
			rotate([0,90,0]) translate([-1.5,1.5,1.5]) cylinder(47,1.5,1.5,$fn=vertices);
			rotate([0,90,0]) translate([-15.0,1.5,1.5]) cylinder(47,1.5,1.5,$fn=vertices);
		}

		translate([0,2.0,2.0]) color("red") cube([50,12.5,12.5]);
	}

	union()
	{
		translate([18.5,8.25,-1]) cylinder(18,2.0,2.0,$fn=vertices);
		translate([31.5,8.25,-1]) cylinder(18,2.0,2.0,$fn=vertices);

		rotate([90,0,0]) translate([6.5,8.25,-17]) cylinder(18,2.0,2.0,$fn=vertices);
		rotate([90,0,0]) translate([43.5,8.25,-17]) cylinder(18,1.5,2.0,$fn=vertices);
	}
}

module borda()
{
	union()
	{
		//bottom right
		color("red") translate([1.5,1.5,1.5]) sphere(1.5,$fn=vertices);
		//bottom left
		color("red") translate([1.5,15.0,1.5]) sphere(1.5,$fn=vertices);
		//up right
		color("red") translate([1.5,1.5,15.0]) sphere(1.5,$fn=vertices);
		//up left
		color("red") translate([1.5,15.0,15.0]) sphere(1.5,$fn=vertices);

		//left
		translate([1.5,1.5,1.5]) cylinder(13.5,1.5,1.5,$fn=vertices);
		//right
		translate([1.5,15.0,1.5]) cylinder(13.5,1.5,1.5,$fn=vertices);
		//bottom
		rotate([90,0,0]) translate([1.5,1.5,-15.0]) cylinder(13.5,1.5,1.5,$fn=vertices);
		//up
		rotate([90,0,0]) translate([1.5,15.0,-15.0]) cylinder(13.5,1.5,1.5,$fn=vertices);

	}
}
//rotate([180,0,0]) translate([-12.7,-12.7,-53.4]) import("Streetlight_post.STL");
//translate([-5,-7.5,50]) rotate([90,0,90]) import("Streetlight_back.STL");
//import("Streetlight_Top.STL");
include<cubo.scad>;

/*difference()
{
	color("red") translate([0,0,-2]) cylinder(54,5.0,5.0, $fn=50);
	color("red") translate([0,0,-1]) cylinder(56,4.0,4.0, $fn=50);
}*/

difference()
{
	difference()
	{
		union()
		{
			color("red") translate([0,0,-2]) cylinder(54,5.0,5.0, $fn=50);
			//color("blue") translate([-5,-7.5,50]) cubo(15,30,12,2);
			color("blue") translate([-12,-7.5,50]) cubo(15,42,22,2);
		}
		union()
		{
			color("green") translate([8,-8.5,50]) cube([6,17,45]);
//			color("green") translate([-12,-8.5,49]) cube([6,17,32]);
			color("green") translate([-15,-8.5,49]) cube([6,17,45]);
		}
	}
	union()
	{
		translate([-10,-5.0,52]) cube([15,10,37]);
  		translate([-8,-6.0,49.5]) cube([1.5,12,41]);
		translate([-9.2,-5.0,49]) cube([1.5,10,26]);
		color("red") translate([0,0,-3]) cylinder(56,4.0,4.0, $fn=50);
	//	color("red") translate([0,0,0]) cylinder(54,5.0,5.0, $fn=50);
	}
}

/*translate([-5,7.5,73]) rotate([180,90,0]) led();
translate([-5,7.5,83]) rotate([180,90,0]) led();
translate([-5,7.5,93]) rotate([180,90,0]) led();*/

//translate([-7.4,-5,131]) rotate([90,90,90]) parafusoCase();

module led()
{
	difference()
	{
		difference()
		{
			color("blue") translate([10,7.5,0]) cylinder(8,4.2,4.2, $fn=50);
			color("blue") translate([10,7.5,2]) cylinder(10,3.5,3.5, $fn=50);
		}
		color("green") translate([8,2.5,10]) rotate([0,45,0]) cube([10,10,10]);
	}
}

module parafusoCase()
{
		difference()
		{
			translate([75,5,1]) cylinder(11.4,3.0,3.0, $fn=50);

			translate([75,5,-1]) cylinder(12.4,1.3,1.3, $fn=50);
		}
}
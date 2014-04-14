include<cubo.scad>;

color("green") base();
color("red") baseFundo();

module base()
{
	difference()
	{
		base1();
		color("red") translate([-37,-17.5,-13.5]) cube([76,53,4.5]);
	}
}

module base1()
{
	difference()
	{
		difference()
		{
			translate([-39,-18.5,-16]) cubo(55,17,80,2);
			union()
			{
				translate([-40,-19.5,-25.5]) cube([82,57,12]);
				color("red") translate([-37,-16.5,-15.5]) cube([76,51,15]);
			}
		}
		union()
		{
			baseFundo();
		}
	}
	difference()
	{
		difference()
		{
			union()
			{
				translate([-31,31.5,-11.5]) cylinder(11.5,3.1,3.1,$fn=40);
				translate([-31,-13.5,-11.5]) cylinder(11.5,3.1,3.1,$fn=40);
				translate([33,31.5,-11.5]) cylinder(11.5,3.1,3.1,$fn=40);
				translate([33,-13.5,-11.5]) cylinder(11.5,3.1,3.1,$fn=40);

			}
			union()
			{
				translate([-31,31.5,-18]) cylinder(15,1,1,$fn=40);
				translate([-31,-13.5,-18]) cylinder(15,1,1,$fn=40);
				translate([33,31.5,-18]) cylinder(15,1,1,$fn=40);
				translate([33,-13.5,-18]) cylinder(15,1,1,$fn=40);
	
				translate([-31,32.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
				translate([-31,-14.25,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
				translate([33,32.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
				translate([33,-14.25,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			}
		}
	}
}

module baseFundo()
{
	difference()
	{
		color("red") translate([-38,-17.5,-13.5]) cube([78,53,3]);
		union()
		{
//			translate([-27,-13.5,-14]) cube([44,4,8]);
			translate([-28,-12.5,-14]) cube([21.5,4,8]);
			translate([-28,28.5,-14]) cube([35.0,4,8]);


			translate([-31,31.5,-15.5]) cylinder(11.5,1,1,$fn=40);
			translate([-31,-13.5,-15.5]) cylinder(11.5,1,1,$fn=40);
			translate([33,31.5,-15.5]) cylinder(11.5,1,1,$fn=40);
			translate([33,-13.5,-15.5]) cylinder(11.5,1,1,$fn=40);


			translate([-31,31.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			translate([-31,-13.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			translate([33,31.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			translate([33,-13.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		}
	}
}

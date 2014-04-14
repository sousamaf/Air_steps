include<cubo.scad>;


difference()
{
	color("yellow") translate([-37,-13.5,-5]) cubo(45,16,76,2);
	union()
	{
		color("blue") translate([34,11.5,20]) rotate([0,90,90]) ultrassom();
		color("blue") translate([-32,6.5,20]) rotate([0,90,270]) ultrassom();

		translate([35,8.75,-2]) cylinder(11,1,1,$fn=40);
		translate([-34,8.75,-2]) cylinder(11,1,1,$fn=40);
		translate([1,-11.0,-2]) cylinder(11,1,1,$fn=40);
		translate([1,29,-2]) cylinder(11,1,1,$fn=40);

		translate([-40,-20,-6]) cube([80,60,7]);
	}
}


//base();
//color("red") baseFundo();


module base()
{
	difference()
	{
		union()
		{
			base1();
			color("red") translate([-6.5,10.0,-8]) cube([15,7,9]);
			color("red") translate([-6.5,1,-8]) cube([15,7,9]);
		}
		union()
		{
			color("red") translate([-37,-17.5,-13.5]) cube([76,53,4.5]);
			translate([-4.5,12.0,-12]) cube([11,3,14]);
			translate([-4.5,3,-12]) cube([11,3,14]);

		translate([35,8.75,-2]) cylinder(11,1,1,$fn=40);
		translate([-34,8.75,-2]) cylinder(11,1,1,$fn=40);
		translate([1,-10.5,-2]) cylinder(11,1,1,$fn=40);
		translate([1,28.5,-2]) cylinder(11,1,1,$fn=40);

//import(file="sonares.stl");
//			color("blue") translate([34,19,20]) rotate([0,90,90]) ultrassom();
//			color("blue") translate([-32,-1,20]) rotate([0,90,270]) ultrassom();
		}
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

module ultrassom()
{
	color("red") translate([-3.5,-1.25,-1]) cubo(67,16.75,23,2);

	color("red") translate([9.5,19.75,7.5]) cylinder(13.5,8.55,8.55,$fn=50);
	color("red") translate([9.5,45.75,7.5]) cylinder(13.5,8.55,8.55,$fn=50);

//	color("red") translate([20,26,1.5]) cube([6,12.5,1]);
}
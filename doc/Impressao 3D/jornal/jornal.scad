include<cubo.scad>;

//frente
difference()
{
	union()
	{
//		white();
//		red();
		blue();
	}
	union()
	{
		translate([17,-1,-1]) cube([4,82,77]);
	}
}

/*difference()
{
	white();
	union()
	{
		translate([-1,-1,-1]) cube([18,82,77]);

		color("white") translate([4,8,8]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		color("white") translate([4,72,8]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		color("white") translate([4,8,67]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		color("white") translate([4,72,67]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);

		translate([20,8,8]) rotate([0,90,0]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		translate([20,72,8]) rotate([0,90,0]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		translate([20,8,67]) rotate([0,90,0]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		translate([20,72,67]) rotate([0,90,0]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
	}
}*/

module white()
{
	color("white") difference()
	{
		cubo(80,75,20,3);
		union()
		{
			translate([2,5,5]) cube([15,70,65]);
			translate([-1,6.5,6.5]) cube([3,67,15]);
			translate([-1,6.5,26]) cube([3,67,41]);
		}
	}
	color("white") translate([1,5,23]) cube([19,6,2]);
	color("white") translate([1,69,23]) cube([19,6,2]);
}

module red()
{
	difference()
	{
		union()
		{
			color("red") translate([2,5,5]) cube([2,70,18]);
			color("red") translate([4,8,8]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
			color("red") translate([4,72,8]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
			color("red") translate([4,8,20]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
			color("red") translate([4,72,20]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		}
		union()
		{
			color("red") translate([4,8,8]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
			color("red") translate([4,72,8]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		}
	}
}

module blue()
{
	difference()
	{
		union()
		{
			color("blue") translate([2,5,25]) cube([2,70,45]);
			color("blue") translate([4,8,28]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
			color("blue") translate([4,72,28]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
			color("blue") translate([4,8,67]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
			color("blue") translate([4,72,67]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		}
		union()
		{
			color("blue") translate([4,8,67]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
			color("blue") translate([4,72,67]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		}
	}
}

/*difference()
{
	union()
	{
		color("red") translate([2,5,5]) cube([2,70,18]);
		color("red") translate([4,8,8]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		color("red") translate([4,72,8]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		color("red") translate([4,8,20]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		color("red") translate([4,72,20]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);

		color("blue") translate([2,5,25]) cube([2,70,45]);
		color("blue") translate([4,8,28]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		color("blue") translate([4,72,28]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		color("blue") translate([4,8,67]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
		color("blue") translate([4,72,67]) rotate([0,90,0]) cylinder(16,3,3,$fn=50);
	}
	union()
	{
		color("red") translate([4,8,8]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		color("red") translate([4,72,8]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		color("blue") translate([4,8,67]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
		color("blue") translate([4,72,67]) rotate([0,90,0]) cylinder(17,1,1,$fn=50);
	}
}*/
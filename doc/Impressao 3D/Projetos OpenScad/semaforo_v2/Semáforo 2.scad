include<cubo.scad>;

tampa();

difference()
{
	union()
	{
		difference()
		{
			color("blue") cubo(15,70,15,2);
			union()
			{
				color("white") translate([2,2,0]) cube([11,11,68]);
				color("blue") translate([-1,-1,-1]) cube([17,17,3]);
			}
		}
		color("blue") translate([1,5,62]) cube([13,5,7]);
		color("blue") translate([1,5,2]) cube([13,5,13]);
		color("blue") translate([11,0,2]) cube([2,13,2]);
	}
	union()
	{
		color("white") translate([3,7.5,1]) cylinder(11,1,1,$fn=50);
		color("white") translate([10,7.5,1]) cylinder(11,1,1,$fn=50);
		color("white") translate([3,7.5,12]) rotate([90,90,90]) cylinder(11,1,1,$fn=50);
			color("white") translate([10,7.5,65]) rotate([90,90,90]) cylinder(11,1,1,$fn=50);

		color("blue") translate([12.9,-1,-1]) cube([17,17,72]);
	}
}

module tampa()
{
	translate([2,0,0]) difference()
	{
		union()
		{
			difference()
			{
				difference()
				{
					color("blue") cubo(15,70,15,2);
					color("blue") translate([-1,-1,-1]) cube([17,17,3]);
				}
				color("white") translate([-6,-1,-1]) cube([17,17,72]);
			}
			translate([14,0,65]) rotate([90,90,90]) led();
			translate([14,0,55]) rotate([90,90,90]) led();
			translate([14,0,45]) rotate([90,90,90]) led();
		}
		union()
		{
			color("white") translate([10,7.5,55]) rotate([90,90,90]) cylinder(10,2.5,2.5, $fn=50);
			color("white") translate([10,7.5,45]) rotate([90,90,90]) cylinder(10,2.5,2.5, $fn=50);
			color("white") translate([10,7.5,35]) rotate([90,90,90]) cylinder(10,2.5,2.5, $fn=50);


			color("white") translate([10,7.5,65]) rotate([90,90,90]) cylinder(11,1,1,$fn=50);
			color("white") translate([14.3,7.5,65]) rotate([90,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);

			color("white") translate([10,7.5,12]) rotate([90,90,90]) cylinder(11,1,1,$fn=50);
			color("white") translate([14.3,7.5,12]) rotate([90,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		}
	}
}

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
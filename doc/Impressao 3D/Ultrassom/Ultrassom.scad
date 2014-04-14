include<cubo.scad>;

//parte de baixo
difference()
{
	union()
	{
		case();
		color("red") translate([15,25.25,0]) cube([1,14,5]);
		color("red") translate([16,25.25,0]) cube([3,1,5]);
		color("red") translate([16,38.25,0]) cube([3,1,5]);
		translate([4,32,0]) cylinder(4.5,2.5,2.5,$fn=40);
	}
	union()	
	{
		translate([-5,-2,7.5]) cube([30,70,10]);
		translate([8,6,-1]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		translate([8,59,-1]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);

		translate([8,6,0]) cylinder(20,1,1,$fn=40);
		translate([8,59,0]) cylinder(20,1,1,$fn=40);
		translate([-1.5,9.75,5]) cube([5,46,3]);

		color("red") translate([18,9.75,5]) cube([5,46,2.5]);
	}
}

//tampa
difference()
{
	union()
	{
		case();
		difference()
		{
			union()
			{
				color("red") translate([9.5,19.75,7.5]) cylinder(5,9.55,9.55,$fn=50);
				color("red") translate([9.5,45.75,7.5]) cylinder(5,9.55,9.55,$fn=50);
				color("red") translate([15.,26,4]) cube([1,13,10]);
				color("red") translate([16,25.25,4]) cube([3,1,10]);
				color("red") translate([16,38.25,4]) cube([3,1,10]);
			}
			union()
			{
				color("red") translate([9.5,19.75,6.5]) cylinder(7,8.55,8.55,$fn=50);
				color("red") translate([9.5,45.75,6.5]) cylinder(7,8.55,8.55,$fn=50);
			}
		}
	}
	union()
	{
		translate([-5,-2,-9.5]) cube([30,70,17.0]);
		color("red") translate([18,9.75,5]) cube([5,46,2.5]);
	}
} 


module case()
{
	difference()
	{
		color("red") translate([-3,-0.75,-1]) cubo(66,15.5,23,2);
		union()
		{
//			translate([-1,10.25,0]) sensor();
			color("red") translate([0,10.25,0]) sensor();
			translate([0,2.25,1.5]) cube([18,60,10.5]);
		}
	}
	difference()
	{
		union()
		{
			translate([8,6,0]) cylinder(13,3.5,3.5,$fn=40);
			translate([8,59,0]) cylinder(13,3.5,3.5,$fn=40);
		}
		union()
		{
			translate([8,6,0]) cylinder(14,1,1,$fn=40);
			translate([8,59,0]) cylinder(14,1,1,$fn=40);
		}
	}
}

//sensor();

module sensor()
{
	difference()
	{
		union()
		{
			translate([0,-0.5,5]) cube([20,46,2.5]);
	
			color("red") translate([9.5,9.5,7.5]) cylinder(13.5,8.55,8.55,$fn=50);
			color("red") translate([9.5,35.5,7.5]) cylinder(13.5,8.55,8.55,$fn=50);

			color("green") translate([17,16,1.5]) cube([12.5,12,8]);
		}
/*		union()
		{
			color("black") translate([18.5,44,3.5]) cylinder(10,0.75,0.75,$fn=50);
			color("black") translate([18.5,1,3.5]) cylinder(10,0.75,0.75,$fn=50);
			color("black") translate([1.5,44,3.5]) cylinder(10,0.75,0.75,$fn=50);
			color("black") translate([1.5,1,3.5]) cylinder(10,0.75,0.75,$fn=50);
		}*/
	}
}

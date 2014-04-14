difference()
{
	cube([70,50,1.5]);
	union()
	{
		translate([3,3,-1]) cylinder(3,1,1,$fn=40);
		translate([3,47,-1]) cylinder(3,1,1,$fn=40);
		translate([67,3,-1]) cylinder(3,1,1,$fn=40);
		translate([67,47,-1]) cylinder(3,1,1,$fn=40);

		translate([14,-2.5,0]) furos();
	}
}

module furos()
{
	color("red") translate([50,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([47.5,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([45,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([42.5,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([40,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([37.5,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([35,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([32.5,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([30,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([27.5,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([25,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([22.5,6,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([20,6,-1]) cylinder(3,0.5,0.5,$fn=40);

	color("red") translate([50,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([47.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([45,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([42.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([40,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([37.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([35,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([32.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([28.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([26,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([23.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([21,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([18.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([16,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([13.5,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
	color("red") translate([11,46.5,-1]) cylinder(3,0.5,0.5,$fn=40);
}

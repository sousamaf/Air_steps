include<cubo.scad>;

difference()
{
	color("blue") translate([0,-10,-10]) cubo(66,28,39,2);
	union()
	{
		color("white") translate([-9,0.5,0]) sensor();
		color("blue") translate([25,-11,-11]) cube([15,68,30]);
	}
}


module sensor()
{
	translate([0,-0.5,0]) cube([23,46,8]);

	color("red") translate([9.5,8.5,7.5]) cylinder(13.5,8.5,8.5,$fn=50);
	color("red") translate([9.5,36.5,7.5]) cylinder(13.5,8.5,8.5,$fn=50);

	color("green") translate([22,16.75,0]) cube([12.5,10,3]);
}
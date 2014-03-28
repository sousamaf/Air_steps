espessura=2;

logo();

module logo()
{
	scale(0.9,0.9,1) air();
	translate([0,2,0]) nuvem();
}

module air()
{
	//LETRA A
	difference()
	{
		union()
		{
			difference()
			{
				translate([15,30,0]) cylinder(espessura+0.222,9.0,9.0,$fn=50);
				translate([15,30,-1]) cylinder(espessura+2,6.0,6.0,$fn=50);		
			}
			translate([6.1,20.9,0]) cube([10,3,espessura+0.222]);	
		}
		translate([6.1,23.9,-1]) cube([10,1.6,espessura+2]);
	}

	//LETRA I
	union()
	{
		translate([6.1,15.5,0]) cube([17.5,3,espessura+0.222]);
		translate([27.5,17.0,0]) cylinder(espessura+0.222,2.0,2.0,$fn=50);
	}

	//LETRA R
	union()
	{
		translate([6.1,9.5,0]) cube([17.5,3,espessura+0.222]);
		difference()
		{
			translate([15,3.5,0]) cylinder(espessura+0.222,9.0,9.0,$fn=50);
			union()
			{
				translate([15,3.5,-1]) cylinder(espessura+2,6.0,6.0,$fn=50);
				translate([5.1,-6.5,-1]) cube([20,10,espessura+2]);	
				translate([5.1,0,-1]) cube([9,9.5,espessura+2]);	
			}
		}
	}
}

module nuvem()
{
	translate([1,0,0]) scale([1.2,2.3,1.0]) cylinder(espessura,2.0,2.0,$fn=50);

	translate([4.6,-7.3,0]) scale([1.2,2.3,1.0]) cylinder(espessura,2.7,2.7,$fn=50);

	translate([7.6,-16.7,0]) scale([1.0,1.8,1.0]) cylinder(espessura,2.7,2.7,$fn=50);
	translate([9.5,-23.0,0]) scale([1.5,2.0,1.0]) cylinder(espessura,1.7,1.7,$fn=50);
	translate([13.1,-26.2,0]) scale([1.9,2.0,1.0]) cylinder(espessura,1.8,1.8,$fn=50);
	translate([16,-25.4,0]) scale([2.5,2.0,1.0]) cylinder(espessura,1.5,1.5,$fn=50);
	translate([19.5,-21.5,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5,2.5,$fn=50);
	translate([21.2,-14.4,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5,2.5,$fn=50);
	translate([19.8,-8.6,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5,2.5,$fn=50);
	translate([16.8,-4.6,0]) scale([1.3,1.1,1.0]) cylinder(espessura,2.5,2.5,$fn=50);
	translate([12.8,-5.5,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5,2.5,$fn=50);
	rotate(-38) translate([12.5,-0.7,0]) scale([1.1,1.8,1.0]) cylinder(espessura,2.7,2.7,$fn=50);

	translate([14.1,-15.6,0]) scale([3,4,1.0]) cylinder(espessura,2.7,2.7,$fn=50);
}
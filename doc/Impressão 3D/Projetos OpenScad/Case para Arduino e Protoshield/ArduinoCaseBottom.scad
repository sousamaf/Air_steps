// Air Soluções Inteligentes

//opção... 1=estojo; 2=letras
opcao=1;

vertices=5;
varTopHeight=6;

if(opcao==1)
{
	union()
	{
		difference()
		{
			import(file="case_base_arduino.STL");

			scale([0.9,0.9,2.5]) rotate([180,0,90]) translate([28,40,-2]) logo();
		}
	
		protoShield();	
		translate([10,20,2]) color("red") cube([60,30,1]);

		difference()
		{
			translate([62.72,13.38,0]) cylinder(9,4.32,4.32, $fn=vertices);

			translate([62.72,13.38,0]) cylinder(10,1.29,1.29, $fn=vertices);
		}
	}
}
if(opcao==2) { 
	difference()
	{
		color("Blue") scale([0.9,0.9,1.4]) rotate([180,0,90]) translate([28,40,-2]) logo();
		translate([10,20,2]) color("red") cube([60,30,1]);
	}
}

module preencheCanto()
{
	difference()
	{
		union() {
				translate([0.4,0.0,1]) cube([5,2,32.4-varTopHeight]);
				rotate([0,0,90]) translate([0,-2,1]) cube([5,2,32.4-varTopHeight]);
		}
		difference()
		{
			translate([3,3,-1]) cylinder(35,5,5, $fn=vertices);
			translate([2.9,2.85,-2]) cylinder(37,3,3, $fn=vertices);
		}
	}
	translate([3,0,1]) cube([5,2,32.4-varTopHeight]);
  	rotate([0,0,90]) translate([3,-2,1]) cube([5,2,32.4-varTopHeight]);
	difference()
	{
		translate([5,5,0]) cylinder(33.5-varTopHeight,3,3, $fn=vertices);
		translate([5,5,1]) cylinder(33.5-varTopHeight,1.2,1.2, $fn=vertices);
	}
}

module protoShield()
{	
	union()
	{
		preencheCanto();
		translate([80,0,0]) rotate([0,0,90]) preencheCanto();
		translate([80,75,0]) rotate([0,0,180]) preencheCanto();
		translate([0,75,0]) rotate([0,0,270]) preencheCanto();

		translate([8,0,1]) cube([65,2,32.4-varTopHeight]);
 		rotate([0,0,90]) translate([8,-2,1]) cube([60,2,32.4-varTopHeight]);	
		translate([8,73,1]) cube([65,2,32.4-varTopHeight]);
 		rotate([0,0,90]) translate([8,-80,22.5]) cube([60,2,10.9-varTopHeight]);	 
	}
}



espessura=2;

module logo()
{
	union()
	{
		scale(0.9,0.9,1) air();
		translate([0,2,0]) nuvem();
	}
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
				translate([15,30,0]) cylinder(espessura+0.222,9.0,9.0,$fn=vertices);
				translate([15,30,-1]) cylinder(espessura+2,6.0,6.0,$fn=vertices);		
			}
			translate([6.1,20.9,0]) cube([10,3,espessura+0.222]);	
		}
		translate([6.1,23.9,-1]) cube([10,1.6,espessura+2]);
	}

	//LETRA I
	union()
	{
		translate([6.1,15.5,0]) cube([17.5,3,espessura+0.222]);
		translate([27.5,17.0,0]) cylinder(espessura+0.222,2.0,2.0,$fn=vertices);
	}

	//LETRA R
	union()
	{
		translate([6.1,9.5,0]) cube([17.5,3,espessura+0.222]);
		difference()
		{
			translate([15,3.5,0]) cylinder(espessura+0.222,9.0,9.0,$fn=vertices);
			union()
			{
				translate([15,3.5,-1]) cylinder(espessura+2,6.0,6.0,$fn=vertices);
				translate([5.1,-6.5,-1]) cube([20,10,espessura+2]);	
				translate([5.1,0,-1]) cube([9,9.5,espessura+2]);	
			}
		}
	}
}

module nuvem()
{
	translate([1,0,0]) scale([1.2,2.3,1.0]) cylinder(espessura,2.0,2.0,$fn=vertices);

	translate([4.6,-7.3,0]) scale([1.2,2.3,1.0]) cylinder(espessura,2.7,2.7,$fn=vertices);

	translate([7.6,-16.7,0]) scale([1.0,1.8,1.0]) cylinder(espessura,2.7,2.7,$fn=vertices);
	translate([9.5,-23.0,0]) scale([1.5,2.0,1.0]) cylinder(espessura,1.7,1.7,$fn=vertices);
	translate([13.1,-26.2,0]) scale([1.9,2.0,1.0]) cylinder(espessura,1.8,1.8,$fn=vertices);
	translate([16,-25.4,0]) scale([2.5,2.0,1.0]) cylinder(espessura,1.5,1.5,$fn=vertices);
	translate([19.5,-21.5,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5,2.5,$fn=vertices);
	translate([21.2,-14.4,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5,2.5,$fn=vertices);
	translate([19.8,-8.6,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5,2.5,$fn=vertices);
	translate([16.8,-4.6,0]) scale([1.3,1.1,1.0]) cylinder(espessura,2.5,2.5,$fn=vertices);
	translate([12.8,-5.5,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5,2.5,$fn=vertices);
	rotate(-38) translate([12.5,-0.7,0]) scale([1.1,1.8,1.0]) cylinder(espessura,2.7,2.7,$fn=vertices);

	translate([14.1,-15.6,0]) scale([3,4,1.0]) cylinder(espessura,2.7,2.7,$fn=vertices);
}
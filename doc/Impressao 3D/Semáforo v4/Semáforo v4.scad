include<cubo.scad>;

//tampaLDR();
//color("blue") acabamento();
color("pink") base();
//color("pink") baseFundo();
//color("pink") semaforo();
//color("blue") tampa();

//translate([-39,15.5,-5]) cube([8,21,10]);
//color("red") translate([-31,4.5,-5]) cube([3,11,10]);

module semaforo()
{
	difference()
	{	
		union()
		{
			color("blue") semaforo1();
//			color("blue") translate([3.5,2,64.5]) cube([13,6,4]);
//			color("blue") translate([3.5,10,64.5]) cube([13,6,4]);

			translate([5.75,12.25,62.25]) rotate([90,0,90]) cylinder(11,2.25,2.25,$fn=50);
			translate([5.75,5.75,62.25]) rotate([90,0,90]) cylinder(11,2.25,2.25,$fn=50);
		}
		union()
		{
			translate([9,9,66]) cylinder(5,2,2,$fn=50);		
			translate([9,9,64]) cylinder(5,3,3,$fn=50);		
			translate([3,6,64]) cube([6,6,4]);
translate([-1,-1,0]) cube([20,20,50]);

			translate([5,12.25,62.25]) rotate([90,0,90]) cylinder(10,1,1,$fn=50);
			translate([5,5.75,62.25]) rotate([90,0,90]) cylinder(10,1,1,$fn=50);
		}
	}
	color("blue") translate([6.5,2,64.5]) cube([10,6.5,1.5]);
	color("blue") translate([6.5,9.5,64.5]) cube([10,6.5,1.5]);
}

module tampaLDR()
{
	difference()
	{
		union()
		{
			translate([4,3.25,60]) cube([2,11.5,7]);
			translate([4,6.25,62]) cube([2,5.5,7]);
		}
		union()
		{
			translate([3,12.25,62.25]) rotate([90,0,90]) cylinder(10,1,1,$fn=50);
			translate([3,5.75,62.25]) rotate([90,0,90]) cylinder(10,1,1,$fn=50);

			translate([3.5,12.25,62.5]) rotate([0,90,0]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			translate([3.5,5.75,62.5]) rotate([0,90,0]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		}
	}
}


module semaforo1()
{
  difference()
  {
	union()
	{
		difference()
		{
			color("blue") cubo(18,70,18,2);	
			union()
			{
				color("white") translate([-1,3,-1]) cube([17.5,12,68]);
				tampa();
			}
		}
		color("blue") translate([5,3,0]) cube([12,2,15]);
		color("blue") translate([5,13,0]) cube([12,2,15]);
	}
	union()
	{
		color("white") translate([9,2.5,1]) cylinder(11,1,1,$fn=50);
		color("white") translate([9,15.5,1]) cylinder(11,1,1,$fn=50);
		color("blue") translate([-1,-1,-1]) cube([20,20,3]);
	}
  }
  translate([16.5,9,57.5]) rotate([-90,90,90]) cylinder(10.5,2.5,2.5,$fn=50);	
  translate([16.5,9,45]) rotate([-90,90,90]) cylinder(10.5,2.5,2.5,$fn=50);	
  translate([16.5,9,32.5]) rotate([-90,90,90]) cylinder(10.5,2.5,2.5,$fn=50);
}

module tampa()
{
  difference()
  {
	union()
	{
		difference()
		{
			translate([1.5,1.5,2]) cube([2.0,15,66.5]);
			union()
			{
				color("red") translate([-1,-8.5,-1]) rotate([0,0,47]) cube([10,10,72]);
				color("red") translate([-1,12.2,-1]) rotate([0,0,47]) cube([10,10,72]);
				color("red") translate([-8.0,0,72]) rotate([0,47,0]) cube([10,19,10]);
			}
		}
		translate([3,16.5,67.5]) rotate([-90,90,90]) led();
		translate([3,16.5,55]) rotate([-90,90,90]) led();
		translate([2.5,16.5,42.5]) rotate([-90,90,90]) led();
	}
	union()
	{
		translate([5,9,57.5]) rotate([-90,90,90]) cylinder(11,2.5,2.5,$fn=50);	
		translate([5,9,45]) rotate([-90,90,90]) cylinder(11,2.5,2.5,$fn=50);	
		translate([5,9,32.5]) rotate([-90,90,90]) cylinder(11,2.5,2.5,$fn=50);
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

module acabamento()
{
	difference()
	{
		color("blue") translate([-5,-5,-1.5]) cubo(28,10,28,2);	
		union()
		{
			color("white") cubo(18,70,18,2);	
			color("blue") translate([-6,-6,-2.5]) cube([30,30,3]);
		}
	}
	difference()
	{
		union()
		{
			color("blue") translate([0,0,0.5]) cube([20,5,1.5]);
			color("blue") translate([0,13,0.5]) cube([20,5,1.5]);
		}
		union()
		{
			color("white") translate([9,2.5,-1]) cylinder(13,1,1,$fn=50);
			color("white") translate([9,15.5,-1]) cylinder(13,1,1,$fn=50);
		}
	}
	color("blue") translate([-0.5,3.5,0.5]) cube([2,11,8]);
}

module base()
{
	difference()
	{
		base1();
		union()
		{
//			color("red") translate([-38,-17.5,-13.5]) cube([78,53,4.5]);
			color("red") translate([-37,-17.5,-13.5]) cube([76,53,4.5]);
			translate([-30.5,5.5,-8]) cube([3,9,10]);
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
			translate([9,2.5,-5]) cylinder(11,1,1,$fn=50);
			translate([9,15.5,-5]) cylinder(11,1,1,$fn=50);
			color("blue") translate([0,5,-3]) cube([20,8,5]);

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

				translate([-32.5,3.5,-7]) cube([7,13,7]);
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
		color("red") translate([-37.75,-17.25,-13.5]) cube([77.5,52.5,3]);
//		color("red") translate([-38,-17.5,-13.5]) cube([78,53,3]);
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

include<cubo.scad>;

//acabamento();
//color("green") base();
//color("green") baseFundo();
//color("blue") semaforo();
//color("yellow") tampa();

difference()
{
	union()
	{
		color("blue") semaforo();
		color("blue") translate([3.5,2,64.5]) cube([13,6,4]);
		color("blue") translate([3.5,10,64.5]) cube([13,6,4]);
	}
	union()
	{
		translate([9,9,66]) cylinder(3,2,2,$fn=50);		
		translate([9,9,64]) cylinder(5,3,3,$fn=50);		
		translate([3,6,64]) cube([6,6,4]);
//		translate([-1,-1,0]) cube([20,20,63]);
	}
}
color("blue") translate([3.5,2,64.5]) cube([13,6,1.5]);
color("blue") translate([3.5,10,64.5]) cube([13,6,1.5]);

module semaforo()
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
		color("white") translate([9,2.5,1]) cylinder(11,1.5,1.5,$fn=50);
		color("white") translate([9,15.5,1]) cylinder(11,1.5,1.5,$fn=50);
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
			color("white") translate([9,2.5,-1]) cylinder(13,1.5,1.5,$fn=50);
			color("white") translate([9,15.5,-1]) cylinder(13,1.5,1.5,$fn=50);
		}
	}
	translate([-0.5,3,0.5]) cube([2,12,8]);
}

module base()
{
	difference()
	{
//		union()
//		{
/*			difference()
			{
				color("blue") translate([-5,-5,-1.5]) cubo(28,10,28,2);	
				union()
				{
					color("white") cubo(18,70,18,2);	
					color("blue") translate([-6,-6,-2.5]) cube([30,30,3]);
				}
			}*/
			difference()
			{
//				translate([-28,-18.5,-10]) cubo(55,11,58,2);
				translate([-28,-18.5,-16]) cubo(55,17,58,2);
				union()
				{
					translate([-29,-19.5,-25.5]) cube([60,57,12]);
					color("red") translate([-26,-16.5,-15.5]) cube([54,51,15]);
				}
			}
//		}
		union()
		{
			translate([9,2.5,-5]) cylinder(11,1.5,1.5,$fn=50);
			translate([9,15.5,-5]) cylinder(11,1.5,1.5,$fn=50);
			color("blue") translate([0,5,-3]) cube([20,8,5]);

			baseFundo();
		}
	}
	difference()
	{
		union()
		{
			translate([-15,9,-8.5]) cylinder(8,3,3,$fn=40);
			translate([15,18,-8.5]) cylinder(8,3,3,$fn=40);
			translate([15,0,-8.5]) cylinder(8,3,3,$fn=40);
		}
		union()
		{
			translate([-15,9,-9]) cylinder(8.5,1.5,1.5,$fn=40);
			translate([15,18,-9]) cylinder(8.5,1.5,1.5,$fn=40);
			translate([15,0,-9]) cylinder(8.5,1.5,1.5,$fn=40);
		}
	}
	difference()
	{
		union()
		{
			translate([-22,9,-12]) cylinder(12.5,3,3,$fn=40);
			translate([25,28.5,-12]) cylinder(12.5,3.2,3.2,$fn=40);
			translate([25,-10.5,-12]) cylinder(12.5,3.2,3.2,$fn=40);
		}
		union()
		{
			translate([-22,9,-12.5]) cylinder(13,1.5,1.5,$fn=40);
			translate([25,28.5,-12.5]) cylinder(13,1.5,1.5,$fn=40);
			translate([25,-10.5,-12.5]) cylinder(13,1.5,1.5,$fn=40);
			baseFundo();
		}
	}
}

/*module baseFundo()
{
	difference()
	{
		translate([-28,-18.5,-14]) cubo(55,15,58,2);
		union()
		{
			translate([-29,-19.5,-2]) cube([60,57,10]);
			translate([-29,-19.5,-14.5]) cube([60,57,4.5]);
			translate([-26,-16.5,-8.5]) cube([54,51,8]);
			translate([-24,-12.5,-12]) cube([44,4,8]);
//			translate([-24,-12.5,-12]) cube([22,4,8]);
//			translate([-24,26.5,-12]) cube([44,4,8]);
			translate([-24,26.5,-12]) cube([35,4,8]);
		}
	}
	difference()
	{
		union()
		{
			translate([-22,9,-8.5]) cylinder(6.5,3,3,$fn=40);
			translate([24.95,28.5,-8.5]) cylinder(6.5,3,3,$fn=40);
			translate([24.95,-10.5,-8.5]) cylinder(6.5,3,3,$fn=40);
		}
		union()
		{
			translate([-22,9,-8]) cylinder(6.5,1.5,1.5,$fn=40);
			translate([25,28.5,-8]) cylinder(6.5,1.5,1.5,$fn=40);
			translate([25,-10.5,-8]) cylinder(6.5,1.5,1.5,$fn=40);
		} 
	}
}*/


module baseFundo()
{
	difference()
	{
		color("red") translate([-27,-17.5,-13.5]) cube([56,53,3]);
		union()
		{
			translate([-24,-12.5,-14]) cube([44,4,8]);
//			translate([-24,-12.5,-12]) cube([22,4,8]);
			translate([-24,26.5,-14]) cube([35,4,8]);

			translate([-22,9,-18]) cylinder(15,1.5,1.5,$fn=40);
			translate([25,28.5,-18]) cylinder(15,1.5,1.5,$fn=40);
			translate([25,-10.5,-18]) cylinder(15,1.5,1.5,$fn=40);

			translate([-22,9,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			translate([25,-10.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
			translate([25,28.5,-13.5]) rotate([0,0,90]) scale([1.0,1.0,0.5]) sphere(2.5,$fn=50);
		}
	}
}

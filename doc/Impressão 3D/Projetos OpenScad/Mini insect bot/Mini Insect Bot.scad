include<cubo.scad>;


difference()
{
	union()
	{
		color("green") translate([-27,-10,-5]) cubo(54.5,24,80,2.5);
	//	color("green") translate([-27,-10,-7]) cube([80,52.5,26]);
		color("green") translate([-27,39.5,-5]) cube([80,5,24]);
	}
	color("yellow") union()
	{
		Motores();

		color("red") translate([13,22.5,10]) cube([25,15,10]);

		color("green") translate([0,-8,-10]) cube([23,28,22]);
		color("green") translate([-5,-3,-10]) cube([33,3,22]);
		color("green") translate([8,-12,-9]) cube([15,5,15]);
		translate([8,7,-8]) cube([20,3,20]);

		color("green") translate([-25,0,-8]) cube([25,23,20]);
//		color("green") translate([-44.5,-4.5,0]) cube([28,33,12]);
		color("red") translate([-30,8,-15]) cube([5,15,20]);
		color("red") translate([-6.5,2,9]) rotate([0,90,90]) cube([20,3,26]);
		color("red") translate([-16.5,-4,9]) rotate([0,90,90]) cube([20,3,32]);

		Bateria9v();
//		color("green") translate([0,16.5,-5]) cube([51,27,22]);
		color("green") translate([0,16.5,-8]) cube([51,27,25]);

//		translate([40,41.8,-10]) rotate([0,0,0]) cylinder(10,2,2,$fn=40);
	}
}

difference()
{
	color("green") translate([-30,33,-5]) cubo(35,24,8,2.5);
	color("green") translate([-27,42.5,-8]) cube([10,32,28]);
}

difference()
{
	color("green") translate([48,33,-5]) cubo(35,24,8,2.5);
	union()
	{
		color("green") translate([43,42.5,-8]) cube([10,32,28]);
		color("green") translate([0,16.5,-8]) cube([51,27,25]);
	}
} 

module Motores()
{
	Motor9g();
	translate([-16,0.0,12]) rotate([0,180,270]) Motor9g();
}

module Motor9g()
{

	translate([0,-8,0]) cube([23,24,12]);
	translate([-5,-3,0]) cube([33,3,12]);
	translate([0,-8,0]) cube([23,5,12]);
//	translate([8,-12,0]) cube([15,5,12]);
	//giro da hélice
	translate([17,-7,6]) rotate([90,0,0]) cylinder(5,6,6,$fn=50);
	translate([10.4,-7,6]) rotate([90,0,0]) cylinder(5,2.5,2.5,$fn=50);
	translate([10,-12,3.5]) cube([10,10,5]);
	//fio
	translate([8,7,0]) cube([20,3,12]);
}

module Bateria9v()
{
	color("red") translate([0,16.5,-5]) cube([51,26,22]);
}
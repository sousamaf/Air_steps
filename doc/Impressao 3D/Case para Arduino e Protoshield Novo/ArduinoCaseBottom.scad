// Air Soluções Inteligentes
//Desenvolvido por Alexandre Rossini

include<cubo.scad>;

// Opção de visualização
// 0=completo; 1=estojo; 2=letras
opcao=0;

//vertices=40;
varTopHeight=6;

//import(file="case_base_arduino.STL");

if(opcao==0 || opcao==1)
{
  difference()
  {
	difference()
	{
		union()
		{
			difference()
			{
				color("blue") translate([-0.5,-0.5,0.0]) cubo(76,35.5-varTopHeight,81,1.7);
//				color("blue") translate([-1.0,-1.0,0.5]) cube([80,80,38.0-varTopHeight-3]);
				color("blue") translate([2.5,2.5,1.0]) cube([75.5,70,38.0-varTopHeight-3]);
			}
		}
		union() {
			color("blue") translate([-1.0,-1.0,27.4]) cube([82,77,36]);
			color("blue") translate([77,19.3,10.3]) cube([4,12.8,11.3]);
			color("blue") translate([77,51.0,10.4]) cube([4,9.2,11.2]);
//			scale([0.9,0.9,2.5]) rotate([180,0,90]) translate([28,40,-0.79]) logo();
		}
	}
/*    union()
    {
		color("blue") parafusoCase();
		color("blue") translate([-70,0,0]) parafusoCase();
		color("blue") translate([0,65,0]) parafusoCase();
  		color("blue") translate([-70,65,0]) parafusoCase(); 
    } */
  }
}
if(opcao==0 || opcao==2) { 
	difference()
	{
		union()
		{
			color("white") translate([2.5,2.5,1.0]) cube([75,70,1.0]);
		}
		union()
		{
			color("blue") parafusoCase();
			color("blue") translate([-70,0,0]) parafusoCase();
			color("blue") translate([0,65,0]) parafusoCase();
			color("blue") translate([-70,65,0]) parafusoCase();
		
			translate([2.3,2.3,0.5]) cube([2,2,2.5]);
			translate([2.3,71.3,0.5]) cube([2,2,2.5]);
			translate([75.6,2.3,0.5]) cube([2,2,2.5]);
			translate([75.6,71.3,0.5]) cube([2,2,2.5]);
		}
	}
	color("white") parafusoPlaca();
	color("white") translate([0,28,0]) parafusoPlaca();
	color("white") translate([-50.8,43.15,0]) parafusoPlaca();

	color("white") parafusoCase();
	color("white") translate([-70,0,0]) parafusoCase();
	color("white") translate([0,65,0]) parafusoCase();
	color("white") translate([-70,65,0]) parafusoCase();
}

module parafusoPlaca()
{
		difference()
		{
			translate([62.72,13.38,1.5]) cylinder(7.5,4.32,4.32, $fn=vertices);

			translate([62.72,13.38,1.5]) cylinder(8.0,1.29,1.29, $fn=vertices);
		}
}

module parafusoCase()
{
		difference()
		{
			translate([75,5,1]) cylinder(26.5,3.2,3.2, $fn=vertices);

			translate([75,5,3.6]) cylinder(26.5,1.3,1.3, $fn=vertices);
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

bordaNuvem=1.0;

module nuvem()
{
  difference()
  {
	union()
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
	//BORDA DA NUVEM
	union()
	{
		translate([1,0,0]) scale([1.2,2.3,1.0]) cylinder(espessura,2.0-bordaNuvem/1.5,2.0-bordaNuvem/1.5,$fn=vertices);

		translate([4.6,-7.3,0]) scale([1.2,2.3,1.0]) cylinder(espessura,2.7-bordaNuvem/1.5,2.7-bordaNuvem/1.5,$fn=vertices);

		translate([7.6,-16.7,0]) scale([1.0,1.8,1.0]) cylinder(espessura,2.7-bordaNuvem,2.7-bordaNuvem,$fn=vertices);
		translate([9.5,-23.0,0]) scale([1.5,2.0,1.0]) cylinder(espessura,1.7-bordaNuvem/1.5,1.7-bordaNuvem/1.5,$fn=vertices);
		translate([13.1,-26.2,0]) scale([1.9,2.0,1.0]) cylinder(espessura,1.8-bordaNuvem/1.9,1.8-bordaNuvem/1.9,$fn=vertices);
		translate([16,-25.4,0]) scale([2.5,2.0,1.0]) cylinder(espessura,1.5-bordaNuvem/2.0,1.5-bordaNuvem/2.0,$fn=vertices);
		translate([19.5,-21.5,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		translate([21.2,-14.4,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		translate([19.8,-8.6,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		translate([16.8,-4.6,0]) scale([1.3,1.1,1.0]) cylinder(espessura,2.5-bordaNuvem/1.1,2.5-bordaNuvem/1.1,$fn=vertices);
		translate([12.8,-5.5,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		rotate(-38) translate([12.5,-0.7,0]) scale([1.1,1.8,1.0]) cylinder(espessura,2.7-bordaNuvem/1.1,2.7-bordaNuvem/1.1,$fn=vertices);

		rotate(-16) translate([11.7,-9.0,0]) scale([1.1,1.8,1.0]) cylinder(espessura,2.7-bordaNuvem/1.1,2.7-bordaNuvem/1.1,$fn=vertices);
		translate([7.6,-9.5,0]) scale([1.5,1.3,1.0]) cylinder(espessura,2.7-bordaNuvem,2.7-bordaNuvem,$fn=vertices);
		translate([9.5,-20.0,0]) scale([1.5,2.0,1.0]) cylinder(espessura,1.7-bordaNuvem/1.5,1.7-bordaNuvem/1.5,$fn=vertices);
		translate([11.0,-23.0,0]) scale([1.5,2.0,1.0]) cylinder(espessura,1.7-bordaNuvem/1.5,1.7-bordaNuvem/1.5,$fn=vertices);
		translate([17.5,-23.9,0]) scale([2.5,2.0,1.0]) cylinder(espessura,1.5-bordaNuvem/2.0,1.5-bordaNuvem/2.0,$fn=vertices);
		rotate(-30) translate([26.1,-4.0,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		translate([21.0,-14.0,0]) scale([1.0,2.0,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		translate([19.6,-10.6,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		rotate(16) translate([15.4,-10.0,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);
		translate([13.2,-6.0,0]) scale([1.0,1.5,1.0]) cylinder(espessura,2.5-bordaNuvem,2.5-bordaNuvem,$fn=vertices);

		translate([14.1,-14.6,0]) scale([3,4,1.0]) cylinder(espessura,2.4,2.4,$fn=vertices);
	}
  }
}
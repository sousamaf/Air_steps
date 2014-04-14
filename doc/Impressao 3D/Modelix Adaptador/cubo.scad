//2014 - Air Soluções Inteligentes
//Desenvolvido por Alexandre Rossini

vertices=40;
//cubo(20.0,10.0,55,1.0);

module cubo(largura,altura,profundidade,borda)
{
	difference()
	{
		difference()
		{
			union()
			{
				translate([borda,0,borda]) cube([profundidade-borda*2.0,largura,altura-borda*2.0]);
				translate([0,borda,borda]) cube([profundidade,largura-borda*2.0,altura-borda*2.0]);
				translate([borda,borda,0]) cube([profundidade-borda*2.0,largura-borda*2.0,altura]);

				borda(largura,altura,profundidade,borda);
				translate([profundidade-borda*2.0,0,0]) borda(largura,altura,profundidade,borda);

				rotate([0,90,0]) translate([-borda,largura-borda,borda]) cylinder(profundidade-borda*2.0,borda,borda,$fn=vertices);
				rotate([0,90,0]) translate([-altura+borda,largura-borda,borda]) cylinder(profundidade-borda*2.0,borda,borda,$fn=vertices);
				rotate([0,90,0]) translate([-borda,borda,borda]) cylinder(profundidade-borda*2.0,borda,borda,$fn=vertices);
				rotate([0,90,0]) translate([-altura+borda,borda,borda]) cylinder(profundidade-borda*2.0,borda,borda,$fn=vertices);
			}
		}
	}
}

module borda(largura,altura,profundidade,borda)
{
	union()
	{
		//bottom right
		translate([borda,borda,borda]) sphere(borda,$fn=vertices);
		//bottom left
		translate([borda,largura-borda,borda]) sphere(borda,$fn=vertices);
		//up right
		translate([borda,borda,altura-borda]) sphere(borda,$fn=vertices);
		//up left
		translate([borda,largura-borda,altura-borda]) sphere(borda,$fn=vertices);

		//left
		translate([borda,borda,borda]) cylinder(altura-borda*2.0,borda,borda,$fn=vertices);
		//right
		translate([borda,largura-borda,borda]) cylinder(altura-borda*2.0,borda,borda,$fn=vertices);
		//bottom
		rotate([90,0,0]) translate([borda,borda,-largura+borda]) cylinder(largura-borda*2.0,borda,borda,$fn=vertices);
		//up
		rotate([90,0,0]) translate([borda,altura-borda,-largura+borda]) cylinder(largura-borda*2.0,borda,borda,$fn=vertices);

	}
}
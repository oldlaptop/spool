flange_dia = 2;
shaft_dia = 0.375;
tenon_dia = shaft_dia - 0.125;

flange_thickness = 0.075;
shaft_length = 1.5;
tenon_length = 0.25;

mortoise_slop = 0.003;

followthrough = 0.01;

module spool_half(flange_dia, shaft_dia, flange_thickness, shaft_length)
{
	union()
	{
		cylinder(d = flange_dia, h = flange_thickness);
		cylinder(d = shaft_dia, h = flange_thickness + shaft_length);
	}
}

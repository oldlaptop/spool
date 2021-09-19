include <common.scad>

$fn = 128;

module spool_bottom(
	flange_dia = flange_dia,
	shaft_dia = shaft_dia,
	flange_thickness = flange_thickness,
	shaft_length = shaft_length / 2,
	tenon_dia = tenon_dia,
	tenon_length = tenon_length,
	mortoise_slop = mortoise_slop,
	followthrough = followthrough
)
{
	difference()
	{
		spool_half(flange_dia, shaft_dia, flange_thickness, shaft_length);
		translate([0, 0, flange_thickness + shaft_length - tenon_length - mortoise_slop])
		{
			cylinder(d = tenon_dia + 2 * mortoise_slop, h = tenon_length + mortoise_slop + followthrough);
		}
	}
}

spool_bottom();

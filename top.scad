include <common.scad>

$fn = 128;

module spool_top(
	flange_dia = flange_dia,
	shaft_dia = shaft_dia,
	flange_thickness = flange_thickness,
	shaft_length = shaft_length / 2,
	tenon_dia = tenon_dia,
	tenon_length = tenon_length
)
{
	union()
	{
		spool_half(flange_dia, shaft_dia, flange_thickness, shaft_length);
		cylinder(d = tenon_dia, h = flange_thickness + shaft_length + tenon_length);
	}
}

spool_top();

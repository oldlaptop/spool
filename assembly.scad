include <common.scad>

use <bottom.scad>
use <top.scad>

cutaway = false;

difference()
{
	union()
	{
		color("red", alpha = 0.5)
		{
			spool_bottom();
		}
		translate([0, 0, 2 * flange_thickness + shaft_length])
		{
			rotate([180, 0, 0])
			{
				color("green", alpha = 0.5)
				{
					spool_top();
				}
			}
		}
	}
	if (cutaway)
	{
		translate([-flange_dia / 2 - followthrough, -flange_dia / 2 - followthrough, -followthrough])
		{
			cube([flange_dia + 2 * followthrough, flange_dia / 2 + followthrough, 2 * flange_thickness + shaft_length + 2 *followthrough]);
		}
	}
}

include <../config.scad>
use <../lib/hardware.scad>

module test() {
  hole_d = bolt_clearance(hardware);
  difference() {
    cube([grid * 6, grid * 3, wall * 2]);
    translate([grid * 2, grid * 1.5, -1])
      cylinder(h=wall * 2 + 2, d=hole_d);
    translate([grid * 4, grid * 1.5, -1])
      cylinder(h=wall * 2 + 2, d=hole_d);
  }
}

test();

include <dimensions.scad>

difference(){
  union(){
    cylinder(h_ring_max, r_outer, r_outer, [0,0,0]);
    translate([0,r_inner,-h_ring_diff]){
      cylinder(h_ring_diff, r_registration_cutout, r_registration_cutout, [0,0,0]);
    }
  }
  translate([0, 0, h_ring_diff/2 + h_ring_min + 2*r_outer]){
    rotate(a=-atan2(h_ring_max- h_ring_min, 2*r_outer), v = [1,1,0]){
      cube(r_outer*4, center=true);
    }
  }
  translate([0,0,-h_cutouts/2]){
    cylinder(h_cutouts, r_inner, r_inner, [0,0,0]);
  }
}

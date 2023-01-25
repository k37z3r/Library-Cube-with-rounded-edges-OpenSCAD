/*
Library-Cube-with-rounded-edges-OpenSCAD by Sven Reddemann is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/.
Based on a work at https://github.com/k37z3r/Library-Cube-with-rounded-edges-OpenSCAD.
*/
module roundedcube(width=220,depth=220,height=40,fn=100){
    $fn = fn;
    cube([(width-height),(depth-height),height], center = true);
    if (width >= depth){
        intersection() {
            translate([((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (width+height), r = (height/2), center = true);
            translate([0, ((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
        intersection() {
            translate([-((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (width+height), r = (height/2), center = true);
            translate([0, -((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
        intersection() {
            translate([-((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (width+height), r = (height/2), center = true);
            translate([0, ((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
        intersection() {
            translate([((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (width+height), r = (height/2), center = true);
            translate([0, -((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
    }
    else{
        intersection() {
            translate([((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (depth+height), r = (height/2), center = true);
            translate([0, ((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
        intersection() {
            translate([-((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (depth+height), r = (height/2), center = true);
            translate([0, -((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
        intersection() {
            translate([-((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (depth+height), r = (height/2), center = true);
            translate([0, ((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
        intersection() {
            translate([((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (depth+height), r = (height/2), center = true);
            translate([0, -((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width+height), r = (height/2), center = true);
        }
    }
    translate([((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (depth-height), r= (height/2), center = true);
    translate([-((width/2)-(height/2)), 0, 0]) rotate ([90,0,0]) cylinder (h = (depth-height), r= (height/2), center = true);
    translate([0, ((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width-height), r= (height/2), center = true);
    translate([0, -((depth/2)-(height/2)), 0]) rotate ([90,0,90]) cylinder (h = (width-height), r= (height/2), center = true);
}

module bottom() {
    union() {
        difference() {
            cube([16, 29.5, 7], false);
            union() {
                translate([2, -1, 2.5])
                    cube([12, 5, 5], false);
                translate([1, 1, 2.5])
                    cube([14, 26.5, 5], false);
                translate([1, 2, 0.5])
                    cube([2, 4, 2.5], false);
                translate([13, 2, 0.5])
                    cube([2, 4, 2.5], false);
                translate([3.5, 5, 1.5])
                    cube([9, 2, 1.5], false);
            }
        }
        translate([1, 29.5, 2])
            linear_extrude(height=5, center=false) {
                polygon([[0, 0], [0, 5], [1, 7], [13, 7], [14, 5], [14, 0], [12, 0], [12, 3.75], [11.5, 5], [2.5, 5], [2, 3.75], [2, 0]]);
            }
    }
}

module top() {
    union() {
        cube([16, 29.5, 2], false);
        translate([1, 5.5, 2])
                cube([14, 22, 2.5], false);
        translate([0, 29.5, 0])
            difference() {
                
            }
    }
}

translate([20, 0, 0])
    bottom();

top();
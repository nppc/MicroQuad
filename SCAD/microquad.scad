$fn=50;
Bheight=0.85;
fs=48/2;

// Camera footprint is 7x15
camX=7;
camY=15;
camAngle=10;

//translate([fs,fs,0])rotate([0,0,-45]){p_guard();prop();}
//translate([-fs,-fs,0])rotate([0,0,135]){p_guard();prop();}
//translate([-fs,fs,0])rotate([0,0,45]){p_guard();prop();}
//translate([fs,-fs,0])rotate([0,0,-135]){p_guard();prop();}

//translate([0,0,-5])cube([43,17,6],center=true); // Battery

frame();

translate([0,0,5.5])cameramount();

//translate([1.3,0,13])rotate([0,camAngle,0])cube([7,15,15],center=true); // Cam


translate([0,0,2.2])color("PURPLE")cube([11.3,11.3,2.5],center=true);    // FC

module p_guard(){
    color("BLACK")difference(){
        union(){
            hull(){
                cylinder(d=1.7+2,h=Bheight, center=true);
                translate([0,5.5/2,0])cylinder(d=1.7+2,h=Bheight, center=true);
            }
            hull(){
                cylinder(d=1.7+2,h=Bheight, center=true);
                rotate([0,0,120])translate([0,5.5/2,0])cylinder(d=1.7+2,h=Bheight, center=true);
            }
            hull(){
                cylinder(d=1.7+2,h=Bheight, center=true);
                rotate([0,0,-120])translate([0,5.5/2,0])cylinder(d=1.7+2,h=Bheight, center=true);
            }
           
            difference(){
                bamper(0,Bheight,1.7);
                bamper(3,Bheight+0.2,1.7);
            }

            translate([0,0,Bheight])difference(){
                bamper(0,Bheight*2.5,1);
                bamper(1.2,Bheight*2.5+0.2,1);
                cylinder(d=10, h=Bheight*5, center=true);
                rotate([3,0,0])translate([0,0,Bheight])cube([50,50,2], center=true);

            }

            scale([1.08,1,1])translate([-3.25, 1.4, 0])bamperSmoothJoint();
            scale([1.08,1,1])translate([3.25, 1.4, 0])bamperSmoothJoint();

        }
        translate([0,5.5/2,0])cylinder(d=1.7,h=Bheight+0.2, center=true);
        rotate([0,0,120])translate([0,5.5/2,0])cylinder(d=1.7,h=Bheight+0.2, center=true);
        rotate([0,0,-120])translate([0,5.5/2,0])cylinder(d=1.7,h=Bheight+0.2, center=true);    
    }
}

module bamper(adj, hght, cant){
    hull(){
        cylinder(d=9.3-adj*cant,h=hght, center=true);
        rotate([0,0,45])translate([0,40/2,0])cylinder(d=5-adj,h=hght, center=true);
        rotate([0,0,-45])translate([0,40/2,0])cylinder(d=5-adj,h=hght, center=true);
    }
    intersection(){
        cylinder(d=40+5-adj,h=hght, center=true);
        rotate([0,0,45])translate([0,0,-hght])cube([50,50,hght*2]);
    }
}

module bamperSmoothJoint(){
    difference(){
        cube([4,2.4,Bheight], center=true);
        translate([0,1.8,0])cylinder(d=3.3,h=Bheight*1.5, center=true);
        
    }
}

module prop(){
    color("WHITE")translate([0,0,9])cylinder(d=40,h=0.1, center=true);
}

module frame(){
    color("DARKGRAY"){
        cube([17,17,2],center=true);    // FRAME
        rotate([0,0,45])cube([65,6,2],center=true);    // FRAME
        rotate([0,0,-45])cube([65,6,2],center=true);    // FRAME
    }
}


module cameramount(){
    rotate([0,camAngle,0])difference(){
        cube([camX+1.7,camY+1.7, 2], center=true);
        translate([0,0,0.4])cube([camX+0.1,camY+0.1, 2], center=true);
        cube([camX-3,camY+0.1, 5], center=true);
    }
    
    translate([0,0,-2.25])difference(){
        cube([camX+1.9,camY+1.7, 4.5], center=true);
        cube([camX+0.3,camY+0.1, 5], center=true);
        cube([camX+5,camY-3, 5], center=true);
        translate([0,0,-1.7])cube([camX-3,camY+5, 5], center=true);
    }
    
    cammounttab();
    mirror([1,0,0])cammounttab();
    mirror([0,1,0])cammounttab();
    mirror([1,0,0])mirror([0,1,0])cammounttab();
}

module cammounttab(){
    difference(){
        union(){
            translate([camX/2+3,camY/2-0.35,-4.5])cylinder(d=2.8,h=0.6);
            translate([camX/2+0.5,camY/2-0.35-2.4/2,-4.5])cube([2.4,2.4,0.6]);
        }
        translate([camX/2+3,camY/2-0.35,-4.5])cylinder(d=1,h=2, center=true);
    }
}
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

/*
rotate([0,0,45])esc();
rotate([0,0,-45])esc();
rotate([0,0,135])esc();
rotate([0,0,-135])esc();

translate([0,0,2.2])color("PURPLE")cube([11.3,11.3,2.5],center=true);    // FC

frame();
*/

translate([0,0,1])cameramount(5);


//translate([1.3,0,13])rotate([0,camAngle,0])cube([7,15,15],center=true); // Cam



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

        translate([fs,fs,0])rotate([0,0,-45]){cylinder(d=9,h=2, center=true);}
        translate([-fs,-fs,0])rotate([0,0,135]){cylinder(d=9,h=2, center=true);}
        translate([-fs,fs,0])rotate([0,0,45]){cylinder(d=9,h=2, center=true);}
        translate([fs,-fs,0])rotate([0,0,-135]){cylinder(d=9,h=2, center=true);}
    }
}


module esc(){
    translate([0,18,2])color("PURPLE")cube([6.5,11,2], center=true);
}


module cameramount(height){
    translate([0,0,height])rotate([0,camAngle,0])difference(){
        cube([camX+1.7,camY+1.7, 2], center=true);
        translate([0,0,0.4])cube([camX+0.1,camY+0.1, 2], center=true);
        cube([camX-3,camY+0.1, 5], center=true);
    }
    
    
    translate([-camX/2+0.25,camY/2-0.35,0])rotate([0,0,-90])cameramountstand(height-0.2,90);

    translate([camX/2-0.25,camY/2-0.35,0])rotate([0,0,180])cameramountstand(height,0);

    translate([camX/2-0.25,-camY/2+0.35,0])rotate([0,0,90])cameramountstand(height,90);

    translate([-camX/2-3.7,-camY/2+0.35,0])rotate([0,0,0])cameramountstand(height,-90);
    
    translate([-camX/2,camY/2+0.05,height-1.5])cube([7,0.8,1.5]);

    translate([-camX/2-4.9,-camY/2-0.85,height-1.5])cube([12,0.8,1.5]);

    translate([-camX/2-4.9,-camY/2-0.85,height-0.1])cube([4.5,2.4,0.8]);
}



module cameramountstand(hg,mrot){
    //hg is height
    // mrot is rotation of mount hole 0 or 90

    translate([-2.4/2,-2.4/2,0]){
        difference(){
            cube([2.4,2.4,hg]);
            translate([0.8,0.8,-0.5])cube([2.4,2.4,hg+1]);
        }
    }
    
        rotate([0,0,mrot])translate([-2.8,0,0])difference(){
            union(){
                cylinder(d=2.8,h=0.6);
                translate([0,-2.4/2,0])cube([4,2.4,0.6]);
            }
            cylinder(d=1,h=3,center=true);
        }
}
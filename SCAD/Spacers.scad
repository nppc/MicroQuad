$fn=50;
SpacerDiam = 2.8;
SpacerHole = 1.45;
// Spacer for 12x12mm mount

rotate([180,0,0])fullCameraMount();

module fullCameraMount(){
    difference(){
        union(){
            translate([-1.4,0,2])rotate([0,0,-5])CameraMount();
            difference(){
                union(){
                    translate([12/2,12/2,-2])cylinder(d=SpacerDiam,h=7);
                    translate([-12/2,12/2,-2])cylinder(d=SpacerDiam,h=7);
                    translate([12/2,-12/2,-2])cylinder(d=SpacerDiam,h=7);
                    translate([-12/2,-12/2,-2])cylinder(d=SpacerDiam,h=7);

                   //translate([12/2,12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
                   //translate([-12/2,12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
                   //translate([12/2,-12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
                   //translate([-12/2,-12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
                    
                    translate([4.5,-12/2,3])cube([2,2,4],center=true);
                    translate([5.5,12/2,3])cube([2,2,4],center=true);
                    
                    translate([-5.5,-12/2,3])cube([2,2,4],center=true);
                    translate([-4.5,12/2,3])cube([2,2,4],center=true);
                    

                }
                translate([12/2,12/2,0])cylinder(d=SpacerHole,h=20,center=true);
                translate([-12/2,12/2,0])cylinder(d=SpacerHole,h=20,center=true);
                translate([12/2,-12/2,0])cylinder(d=SpacerHole,h=20,center=true);
                translate([-12/2,-12/2,0])cylinder(d=SpacerHole,h=20,center=true);
            }
            //translate([-12/2,-10.2/2,-1.2])cube([12,10.2,2]);
        }
        translate([0,0,10])cube([50,50,10],center=true);
    }
}

module CameraMount(){
     //camera footprint 15x7
     rotate([0,4,0])difference(){
         translate([1.3,0,1.5])cube([7.3+1.6,15.4+1.6,4],center=true);
         translate([1.3,0,5])cube([7.5,15.4,9.1],center=true);
         translate([1.4,0,4])cube([5.5,15.4,9.1],center=true);
     }
}



// under FC
module spacer(){
    difference(){
        union(){
            translate([6,6,0])cylinder(d=SpacerDiam,h=4);
            translate([-6,6,0])cylinder(d=SpacerDiam,h=4);
            translate([6,-6,0])cylinder(d=SpacerDiam,h=4);
            translate([-6,-6,0])cylinder(d=SpacerDiam,h=4);
            
            rotate([0,0,45])translate([-20/2,-3/2])cube([20,3,0.2]);
            rotate([0,0,-45])translate([-20/2,-3/2])cube([20,3,0.2]);
        }

        translate([6,6,0])cylinder(d=SpacerHole,h=40,center=true);
        translate([-6,6,0])cylinder(d=SpacerHole,h=40,center=true);
        translate([6,-6,0])cylinder(d=SpacerHole,h=40,center=true);
        translate([-6,-6,0])cylinder(d=SpacerHole,h=40,center=true);

        translate([6,6,3.5])cylinder(d2=SpacerDiam,d1=1,h=0.8);
        translate([-6,6,3.5])cylinder(d2=SpacerDiam,d1=1,h=0.8);
        translate([6,-6,3.5])cylinder(d2=SpacerDiam,d1=1,h=0.8);
        translate([-6,-6,3.5])cylinder(d2=SpacerDiam,d1=1,h=0.8);

    }
}
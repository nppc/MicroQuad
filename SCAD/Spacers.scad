$fn=50;
SpacerDiam = 2.5;
SpacerHole = 1.3;
// Spacer for 12x12mm mount

rotate([180,0,0])fullCameraMount();

module fullCameraMount(){
    translate([-1.3,0,2])CameraMount();
    difference(){
        union(){
            translate([12/2,12/2,-2])cylinder(d=SpacerDiam,h=7);
            translate([-12/2,12/2,-2])cylinder(d=SpacerDiam,h=7);
            translate([12/2,-12/2,-2])cylinder(d=SpacerDiam,h=7);
            translate([-12/2,-12/2,-2])cylinder(d=SpacerDiam,h=7);

            translate([12/2,12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
            translate([-12/2,12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
            translate([12/2,-12/2,1])cylinder(d=SpacerDiam+0.8,h=4);
            translate([-12/2,-12/2,1])cylinder(d=SpacerDiam+0.8,h=4);

        }
        translate([12/2,12/2,0])cylinder(d=SpacerHole,h=20,center=true);
        translate([-12/2,12/2,0])cylinder(d=SpacerHole,h=20,center=true);
        translate([12/2,-12/2,0])cylinder(d=SpacerHole,h=20,center=true);
        translate([-12/2,-12/2,0])cylinder(d=SpacerHole,h=20,center=true);

        //translate([-12/2,-10.2/2,-1.2])cube([12,10.2,2]);

    }
}

module CameraMount(){
     //camera footprint 15x7
     difference(){
         translate([1.3,0,1.5])cube([8+2.1,15.4+2,3],center=true);
         translate([1.4,0,4])rotate([0,4,0])cube([8.4,15.4,9.1],center=true);
     }
     //translate([-4.1,-9.1])rotate([0,0,40])cylinder(d=3.5,h=3,$fn=3);
     //translate([-4.1,9.1])rotate([0,0,-40])cylinder(d=3.5,h=3,$fn=3);
     
     translate([-2.3,0,0.4])cube([2,15.6+1.6,0.6],center=true);
     translate([5.1,0,-0.3])cube([2.3,15.7+1.6,0.6],center=true);
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
//H8 protexted propellers frame
$fn=150;

SUPPORTS=1;     // add supports for not enabling supports in Slicer

PROP=45+2;   // diameter of propeller plus clearance (1mm from each side)
PROPGUARD_T=0.7;    // Thickness of propeller quards (mm)
PROPGUARD_H=5;    // Height of propeller quards (mm)
MOTOR_D=6.12;     //Moptor Diameter (mm)
MOTORMOUNT_H=10;     // height of motor mount
MOTORSCENTER_DX=48;  // Distance between motor centers (X). 63 - H8
MOTORSCENTER_DY=48;  // Distance between motor centers (Y). 63 - H8


translate([-1.3,0,0])CameraMount();
difference(){
    union(){
        translate([12/2,12/2,0])cylinder(d=2.5,h=3,center=true);
        translate([-12/2,12/2,0])cylinder(d=2.5,h=3,center=true);
        translate([12/2,-12/2,0])cylinder(d=2.5,h=3,center=true);
        translate([-12/2,-12/2,0])cylinder(d=2.5,h=3,center=true);
        
        translate([12/2-1,12/2,0.6])cube([2,1,1.8],center=true);
        translate([12/2-1,-12/2,0.6])cube([2,1,1.8],center=true);
    }
    translate([12/2,12/2,0])cylinder(d=1,h=4,center=true);
    translate([-12/2,12/2,0])cylinder(d=1,h=4,center=true);
    translate([12/2,-12/2,0])cylinder(d=1,h=4,center=true);
    translate([-12/2,-12/2,0])cylinder(d=1,h=4,center=true);
}


module CameraMount(){
     //camera footprint 15x7
     rotate([0,4,0])difference(){
         translate([1.3,0,1.5])cube([7.1+1.6,15.4+1.6,3],center=true);
         translate([1.3,0,5])cube([7.5,15.4,9.1],center=true);
         translate([1.4,0,4])cube([5.5,15.4,9.1],center=true);
     }
     //translate([-4.1,-9.1])rotate([0,0,40])cylinder(d=3.5,h=3,$fn=3);
     //translate([-4.1,9.1])rotate([0,0,-40])cylinder(d=3.5,h=3,$fn=3);
     
     //translate([-2.3,0,0.4])cube([2,15.4+1.6,0.6],center=true);
     //translate([5.1,0,-0.3])cube([2,15.4+1.6,0.6],center=true);
}


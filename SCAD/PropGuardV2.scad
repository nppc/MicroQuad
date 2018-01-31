$fn=50;

diam=1.4;
segments=5; // minimum is 2
segmentwidth=5;
segmentHeight=1.5;

Serpent();

module Serpent(){
    for ( i = [0 : segments-1] ){
        translate([segmentwidth*i*2,0,0])UpperSegment();
    }

    for ( i = [0 : segments-2] ){
        translate([segmentwidth+segmentwidth*i*2,-segmentHeight,0])rotate([0,0,180])rotate_extrude(angle=180, convexity=10)
       translate([segmentwidth/2, 0]) circle(d=diam,$fn=6);
    }
    
    translate([-segmentwidth/2,-16/2,0])rotate([90,0,0])cylinder(d=diam,h=16,center=true,$fn=6);
    
    translate([segmentwidth/2+segmentwidth*(segments-1)*2,-16/2,0])rotate([90,0,0])cylinder(d=diam,h=16,center=true,$fn=6);

}

module UpperSegment(){
    rotate_extrude(angle=180, convexity=10)
       translate([segmentwidth/2, 0]) circle(d=diam,$fn=6);

    translate([segmentwidth/2,-segmentHeight/2,0])rotate([90,0,0])cylinder(d=diam,h=segmentHeight,center=true,$fn=6);
    
    translate([-segmentwidth/2,-segmentHeight/2,0])rotate([90,0,0])cylinder(d=diam,h=segmentHeight,center=true,$fn=6);

}
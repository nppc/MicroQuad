$fn=80;
mDist=60;   // distance betwen motors (diagonal)
propD=40;   // propeller diameter
propGap=0.8;  // gap between prop and duct ring
ductHeight=7;
ductwall=0.8; // wall thickness of duct
xy_dist = mDist/sqrt(2);


difference(){
  union(){
    ducts();
    FC_mount();
  }
  ductsCutout();
}

module ducts(){
  diam1=propD+ductwall*2+propGap*2;
  translate([xy_dist/2,xy_dist/2,0])cylinder(d=diam1, h=ductHeight);
  translate([-xy_dist/2,xy_dist/2,0])cylinder(d=diam1, h=ductHeight);
  translate([xy_dist/2,-xy_dist/2,0])cylinder(d=diam1, h=ductHeight);
  translate([-xy_dist/2,-xy_dist/2,0])cylinder(d=diam1, h=ductHeight);
}

module ductsCutout(){
  diam2=propD+propGap*2;
  translate([0,0,-1]){
    translate([xy_dist/2,xy_dist/2,0])cylinder(d=diam2, h=ductHeight+2);
    translate([-xy_dist/2,xy_dist/2,0])cylinder(d=diam2, h=ductHeight+2);
    translate([xy_dist/2,-xy_dist/2,0])cylinder(d=diam2, h=ductHeight+2);
    translate([-xy_dist/2,-xy_dist/2,0])cylinder(d=diam2, h=ductHeight+2);
  }
}


module propellers(){
    translate([xy_dist/2,xy_dist/2,0])propeller();
    translate([-xy_dist/2,xy_dist/2,0])propeller();
    translate([xy_dist/2,-xy_dist/2,0])propeller();
    translate([-xy_dist/2,-xy_dist/2,0])propeller();
}

module propeller(){
    translate([0,0,-5])cylinder(d2=propD,d1=10, h=5);
}

module FC_mount(){
  translate([6,0,0])FC_mount_part();
  translate([-6,0,0])rotate([0,0,180])FC_mount_part();
  translate([0,6,0])rotate([0,0,90])FC_mount_part();
  translate([0,-6,0])rotate([0,0,-90])FC_mount_part();
}

module FC_mount_part(){
  difference(){
    union(){
      hull(){
        cylinder(d=3,h=0.7);
        translate([3,-7/2,0])cube([10,7,0.7]);
      }
      cylinder(d=2.2,h=3);
    }
    translate([0,0,-1])cylinder(d=1.4,h=5);
  }
}
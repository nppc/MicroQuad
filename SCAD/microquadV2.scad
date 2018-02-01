$fn=40;
mDist=60;   // distance betwen motors (diagonal)
propD=40;   // propeller diameter
propGap=0.8;  // gap between prop and duct ring
ductHeight=5;
ductwall=0.8; // wall thickness of duct
motorElevation=17;  // distance from ground to motor mount
xy_dist = mDist/sqrt(2);


difference(){
  union(){
    ducts();
    FC_mount();
  }
  ductsCutout();
}
motorMounts();
backESCmount();
frontESCmount();

translate([-43/2,-4,10])color("green")cube([43,17,6]); // Battery
rotate([-10,0,0])translate([0,-13,12])camera();
motor_props();

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

module motorMounts(){
  translate([0,0,motorElevation]){
    translate([xy_dist/2,xy_dist/2,0])motorMount();
    translate([-xy_dist/2,xy_dist/2,0])motorMount();
    translate([xy_dist/2,-xy_dist/2,0])motorMount();
    translate([-xy_dist/2,-xy_dist/2,0])motorMount();
  }
}

module motorMount(){
  cylinder(d=10,h=2);
}

module camera(){
  color("grey")rotate([90,0,0]){
    cube([15,15,7], center=true);
    cylinder(d=12, h=7+3.5);
  }
}

module backESCmount(){
  translate([-xy_dist/2,-6/2+xy_dist/2,motorElevation])cube([xy_dist,6,2]);
}

module frontESCmount(){
  difference(){
    union(){
      translate([-xy_dist/2,-xy_dist/2,motorElevation])rotate([0,0,60])translate([0,-6/2,0])cube([xy_dist,6,2]);
      translate([xy_dist/2,-xy_dist/2,motorElevation])rotate([0,0,120])translate([0,-6/2,0])cube([xy_dist,6,2]);
    }
    translate([-xy_dist/2,0,motorElevation-1])cube([xy_dist,20,5]);
  }
}

module motor_props(){
    translate([xy_dist/2,xy_dist/2,motorElevation])motor_prop();
    translate([-xy_dist/2,xy_dist/2,motorElevation])motor_prop();
    translate([xy_dist/2,-xy_dist/2,motorElevation])motor_prop();
    translate([-xy_dist/2,-xy_dist/2,motorElevation])motor_prop();
}

module motor_prop(){
  rotate([180,0,0]){
    color("red")union(){
      for (i=[0:120:240]){
        rotate([0,0,i])hull(){
          cylinder(d=3,h=1);
          translate([3,0,0])cylinder(d=2,h=1);
        }
      }
      cylinder(d=4,h=3);
      translate([0,0,3])cylinder(d=10,h=5);
    }
    // prop
    color("white")union(){
      translate([0,0,3+5])cylinder(d=6,h=7);
      translate([0,0,3+5+7])cylinder(d=2,h=1.5);
      translate([0,0,3+5+7-1])cylinder(d=propD,h=0.9);
      translate([0,0,3+5+0.2])cylinder(d2=propD,d1=8,h=5.8);
    }
  }
}
$fn=60;
mDist=60;   // distance betwen motors (diagonal)
propD=40;   // propeller diameter
propGap=0.8;  // gap between prop and duct ring
ductHeight=5;
ductwall=0.7; // wall thickness of duct
partsGap=0.15;  // how much part will be thinner to fit in to socket
motorElevation=17;  // distance from ground to motor mount
xy_dist = mDist/sqrt(2);


difference(){
  union(){
    ducts();
    FC_mount();
  }
  ductsCutout();
}
difference(){
  union(){
    motorMounts();
    backESCmount();
    frontESCmount();
    middleESCmount();
    spoke_Sockets();
  }
  motorMountsHoles();
  //translate([0,propD/2+1,0])cube([100,100,100]);
  
}

translate([xy_dist/2,xy_dist/2,0])spoke(0);
translate([xy_dist/2,xy_dist/2,0])spoke(90);
translate([-xy_dist/2,xy_dist/2,0])spoke(90);
translate([-xy_dist/2,xy_dist/2,0])spoke(180);
translate([xy_dist/2,-xy_dist/2,0])spoke(0);
translate([xy_dist/2,-xy_dist/2,0])spoke(-90);
translate([-xy_dist/2,-xy_dist/2,0])spoke(180);
translate([-xy_dist/2,-xy_dist/2,0])spoke(-90);
//translate([-43/2,-4,10])color("green")cube([43,17,6]); // Battery
//rotate([-10,0,0])translate([0,-13,12])camera();
//motor_props();

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
      cylinder(d=2.2,h=2);
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

module motorMountsHoles(){
  translate([0,0,motorElevation]){
    translate([xy_dist/2,xy_dist/2,0])motorMountHole(0);
    translate([-xy_dist/2,xy_dist/2,0])motorMountHole(180);
    translate([xy_dist/2,-xy_dist/2,0])motorMountHole(180);
    translate([-xy_dist/2,-xy_dist/2,0])motorMountHole(0);
  }
}


module motorMount(){
    cylinder(d=10,h=2);
}

module motorMountHole(degrot){
  rotate([0,0,degrot]){
    cylinder(d=2.8,h=10,center=true);
    for (i=[0:120:240]){
      rotate([0,0,i])translate([5.5/2,0,0])cylinder(d=1.7,h=10, center=true);
    }
  }
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
  //difference(){
    union(){
      translate([-xy_dist/2,-xy_dist/2,motorElevation])rotate([0,0,60])translate([0,-6/2,0])cube([xy_dist/1.6,6,2]);
      translate([xy_dist/2,-xy_dist/2,motorElevation])rotate([0,0,120])translate([0,-6/2,0])cube([xy_dist/1.6,6,2]);
    }
    //translate([-xy_dist/2,0,motorElevation-1])cube([xy_dist,20,5]);
  //}
}

module middleESCmount(){
  translate([8.5,0,motorElevation])rotate([0,0,90])translate([0,-5/2,0])cube([xy_dist/2,5,2]);
  translate([-8.5,0,motorElevation])rotate([0,0,90])translate([0,-5/2,0])cube([xy_dist/2,5,2]);
  
  translate([-xy_dist/4,-4,motorElevation])cube([xy_dist/2,5,2]);
}

module motor_props(){
    translate([xy_dist/2,xy_dist/2,motorElevation])motor_prop(0);
    translate([-xy_dist/2,xy_dist/2,motorElevation])motor_prop(180);
    translate([xy_dist/2,-xy_dist/2,motorElevation])motor_prop(180);
    translate([-xy_dist/2,-xy_dist/2,motorElevation])motor_prop(0);
}

module motor_prop(degrot){
  rotate([180,0,degrot]){
    color("red")union(){
      for (i=[0:120:240]){
        rotate([0,0,i])hull(){
          cylinder(d=3,h=1);
          translate([5.5/2,0,0])cylinder(d=2,h=1);
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

module spoke_Sockets(){
  translate([xy_dist/2,xy_dist/2,0]){
    spoke_SocketUpper(0);
    spoke_SocketUpper(90);
    spoke_SocketLower(0);
    spoke_SocketLower(90);
  }
  translate([-xy_dist/2,xy_dist/2,0]){
    spoke_SocketUpper(180);
    spoke_SocketUpper(90);
    spoke_SocketLower(180);
    spoke_SocketLower(90);
  }
  
  translate([xy_dist/2,-xy_dist/2,0]){
    spoke_SocketUpper(0);
    spoke_SocketUpper(-90);
    spoke_SocketLower(0);
    spoke_SocketLower(-90);
  }
  translate([-xy_dist/2,-xy_dist/2,0]){
    spoke_SocketUpper(180);
    spoke_SocketUpper(-90);
    spoke_SocketLower(180);
    spoke_SocketLower(-90);
  }
  
}

module spoke_SocketUpper(degrot){
  rotate([0,0,degrot])translate([4,-4/2,motorElevation]){
    difference(){
      cube([2.5,4,2]);
      translate([0,(4-3)/2,(2-1.3)/2])cube([3,3,1.3]);
    }
  }
}

module  spoke_SocketLower(degrot){
  rotate([0,0,degrot])translate([propD/2+ductwall+propGap-0.3,-4/2,ductHeight-2.5]){
    difference(){
      hull(){
        cube([2.1,4,2.5]);
        translate([0,0,-1.5])cube([0.2,4,1]);
      }
      translate([(2-1.3)/2,(4-3)/2,0])cube([1.3,3,4]);
    }
  }
}

module spoke(degrot){
rotate([0,0,degrot]){
  translate([propD/2+ductwall+propGap-0.3,-4/2,ductHeight-(2.5-partsGap)]){
    translate([(2-(1.3-partsGap))/2,(4-(3-partsGap))/2,0])cube([1.3-partsGap,3-partsGap,2.6]);
  }

  translate([4,-4/2,motorElevation]){
    translate([1+partsGap,(4-(3-partsGap))/2,(2-(1.3-partsGap))/2])cube([1.6,3-partsGap,1.3-partsGap]);
  }

  hull(){
    translate([propD/2+ductwall+propGap-0.3,-4/2,ductHeight+0.1]){
      translate([(2-(1.3))/2,(4-(3-partsGap))/2,0])cube([1.3,3-partsGap,0.2]);
    }

    translate([4,-4/2,motorElevation]){
      translate([2.4+partsGap,(4-(3-partsGap))/2,(2-(1.3))/2])cube([0.2,3-partsGap,1.3]);
    }
  }
}

}
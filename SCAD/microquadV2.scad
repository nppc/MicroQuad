$fn=80;
mDist=60;   // distance betwen motors (diagonal)
propD=40;   // propeller diameter
propGap=0.8;  // gap between prop and duct ring
ductHeight=5;
ductwall=0.7; // wall thickness of duct
partsGap=0.18;  // how much part will be thinner to fit in to socket
motorElevation=17;  // distance from ground to motor mount
xy_dist = mDist/sqrt(2);

/*
difference(){
  union(){
    ducts();
    FC_mount();
    spoke_Sockets_bottom();
    translate([11.8-2,-8/2,ductHeight-2.7])cube([2,8,2]);
    translate([-11.8,-8/2,ductHeight-2.7])cube([2,8,2]);
  }
  ductsCutout();
  translate([10+partsGap/2,-(4+partsGap)/2,3-partsGap/2])cube([0.8+partsGap,4+partsGap,5]);
  translate([-11-partsGap/2,-(4+partsGap)/2,3-partsGap/2])cube([0.8+partsGap,4+partsGap,5]);

}

translate([0,-13.5,14]){
  difference(){
    cameraMount(4);
    camera(4);
  }
  //camera(4);
}
*/
//rotate([0,90,0])batteryMount();
//for(i=[0:10:80]){translate([i,0,0])rotate([90,0,0])spoke(0);}


/*
difference(){
  union(){
    motorMounts();
    backESCmount();
    frontESCmount();
    middleESCmount();
    spoke_Sockets_upper();

  }
  motorMountsHoles();
  //translate([0,propD/2+1,0])cube([100,100,100]);
  
}

translate([9,-7,9])batteryMountSocketsUpper();
mirror([1,0,0])translate([9,-7,9])batteryMountSocketsUpper();
*/

//rotate([0,-90-180,0])translate([9,-7,9])batteryMount();
//mirror([1,0,0])rotate([0,-90-180,0])translate([9,-7,9])batteryMount();


//translate([9,-7,9])batteryMount();
//mirror([1,0,0])translate([9,-7,9])batteryMount();

/*
translate([xy_dist/2,xy_dist/2,0])spoke(0);
translate([xy_dist/2,xy_dist/2,0])spoke(90);
translate([-xy_dist/2,xy_dist/2,0])spoke(90);
translate([-xy_dist/2,xy_dist/2,0])spoke(180);
translate([xy_dist/2,-xy_dist/2,0])spoke(0);
translate([xy_dist/2,-xy_dist/2,0])spoke(-90);
translate([-xy_dist/2,-xy_dist/2,0])spoke(180);
translate([-xy_dist/2,-xy_dist/2,0])spoke(-90);
*/
//translate([-43/2,-6,10])color("green")cube([43,17,6]); // Battery
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
  dist=12*sqrt(2); //12mm between holes
  translate([dist/2,0,0])FC_mount_part();
  translate([-dist/2,0,0])rotate([0,0,180])FC_mount_part();
  translate([0,dist/2,0])rotate([0,0,90])FC_mount_part();
  translate([0,-dist/2,0])rotate([0,0,-90])FC_mount_part();
  
  translate([-3/2,-(dist+2)/2,0])cube([3,dist+2,0.5]);
  translate([-(dist+2)/2,-3/2,0])cube([dist+2,3,0.5]);
}

module FC_mount_part(){
  difference(){
    union(){
      hull(){
        cylinder(d=3,h=0.7);
        translate([3,-9/2,0])cube([10,9,0.7]);
      }
      hull(){
        translate([0,0,ductHeight-0.7]){
          cylinder(d=3,h=0.7);
          translate([3,-9/2,0])cube([10,9,0.7]);
        }
      }
      cylinder(d=3,h=5);
    }
    translate([0,0,-1])cylinder(d=1.4,h=7);
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
    cylinder(d=2.3,h=10,center=true);
    for (i=[0:120:240]){
      rotate([0,0,i])translate([5.5/2,0,0])cylinder(d=1.75,h=10, center=true);
    }
  }
}

module camera(rotate){
  color("grey")rotate([-rotate+90,0,0]){
    cube([15,15,7], center=true);
    translate([-6.75,-6,0])cube([1.5,3,9], center=true);
    cylinder(d=12, h=7+3.5);
  }
}

module cameraMount(rotate){
  difference(){
    union(){
      rotate([-rotate,0,0])translate([0,0,-7.6])cube([16.6,8.6,2.4],center=true);
      hull(){
        translate([-1/2,-5,-9.5])cube([1,7,1.5]);
        translate([-4.5/2,1,-9.5])cube([4.5,1,1.5]);
      }
    }
    translate([0,5,-7.1])cylinder(d=5,h=4,center=true);
  }
  
  
  
}

module backESCmount(){
  translate([-xy_dist/2,-6/2+xy_dist/2,motorElevation])cube([xy_dist,6,2]);
}

module frontESCmount(){
  //difference(){
    union(){
      translate([-xy_dist/2,-xy_dist/2,motorElevation])rotate([0,0,63])translate([0,-6/2,0])cube([xy_dist/1.65,6,2]);
      translate([xy_dist/2,-xy_dist/2,motorElevation])rotate([0,0,117])translate([0,-6/2,0])cube([xy_dist/1.65,6,2]);
    }
    //translate([-xy_dist/2,0,motorElevation-1])cube([xy_dist,20,5]);
  //}
}

module middleESCmount(){
  translate([10,0,motorElevation])rotate([0,0,90])translate([0,-5/2,0])cube([xy_dist/2,5,2]);
  translate([-10,0,motorElevation])rotate([0,0,90])translate([0,-5/2,0])cube([xy_dist/2,5,2]);
  
  translate([-xy_dist/1.7/2,-9,motorElevation])cube([xy_dist/1.7,5,2]);
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

module spoke_Sockets_bottom(){
  translate([xy_dist/2,xy_dist/2,0]){
    spoke_SocketLower(0);
    spoke_SocketLower(90);
  }
  translate([-xy_dist/2,xy_dist/2,0]){
    spoke_SocketLower(180);
    spoke_SocketLower(90);
  }
  
  translate([xy_dist/2,-xy_dist/2,0]){
    spoke_SocketLower(0);
    spoke_SocketLower(-90);
  }
  translate([-xy_dist/2,-xy_dist/2,0]){
    spoke_SocketLower(180);
    spoke_SocketLower(-90);
  }
  
}

module spoke_Sockets_upper(){
  translate([xy_dist/2,xy_dist/2,0]){
    spoke_SocketUpper(0);
    spoke_SocketUpper(90);
  }
  translate([-xy_dist/2,xy_dist/2,0]){
    spoke_SocketUpper(180);
    spoke_SocketUpper(90);
  }
  
  translate([xy_dist/2,-xy_dist/2,0]){
    spoke_SocketUpper(0);
    spoke_SocketUpper(-90);
  }
  translate([-xy_dist/2,-xy_dist/2,0]){
    spoke_SocketUpper(180);
    spoke_SocketUpper(-90);
  }
  
}

module spoke_SocketUpper(degrot){
  rotate([0,0,degrot])translate([4,-5/2,motorElevation-1]){
    difference(){
      cube([4,5,3]);
      translate([1,(5-3)/2,(3-1.3)/2])cube([4,3,1.3]);
      translate([-4,5/2,-0.5])cylinder(d=8.5, h=2);
    }
  }
}

module  spoke_SocketLower(degrot){
  rotate([0,0,degrot])translate([propD/2+ductwall+propGap-0.3,-4.4/2,0]){
    difference(){
      cube([2.4,4.4,ductHeight]);
      translate([(2-1.3)/2,(4.4-3)/2,-0.5])cube([1.3,3,ductHeight+1]);
      translate([0,(4.4-3.7)/2,ductHeight-0.2])cube([2,3.7,ductHeight+1]);
    }
  }
}

module spoke(degrot){
  rotate([0,0,degrot]){
    translate([propD/2+ductwall+propGap-0.3,-4/2,ductHeight-(2.5-partsGap)]){
      translate([(2-(1.3-partsGap))/2,(4-(3-partsGap))/2,-ductHeight/2])cube([1.3-partsGap,3-partsGap,ductHeight]);
    }

    translate([2,-4/2,motorElevation]){
      translate([3+partsGap,(4-(3-partsGap))/2,(1-(1.3-partsGap))/2])cube([3,3-partsGap,1.3-partsGap]);
    }

    hull(){
      translate([propD/2+ductwall+propGap-0.3,-4/2,ductHeight+0.1]){
        translate([(2-(1.3))/2,(4-(3-partsGap))/2,0])cube([1.3,3-partsGap,0.2]);
      }

      translate([5.5,-4/2,motorElevation]){
        translate([2.4+partsGap,(4-(3-partsGap))/2,(1-(1.3))/2])cube([0.2,3-partsGap,1.3]);
      }
    }
  }
}

module batteryMount(){
  translate([-4/2,0,0])cube([4,0.8,8]);
  translate([-4/2,0,0])cube([4,19,0.8]);
  translate([-4/2,19,0])cube([4,0.8,8]);
  
  translate([-4/2,-2,8-0.8])cube([4,2,0.8]);
  translate([-4/2,19+0.8,8-0.8])cube([4,2,0.8]);
  
  translate([4/2-0.8,5,-6])cube([0.8,4,6]);

}

module batteryMountSocketsUpper(){
  difference(){
    translate([-7/2,-2,8-1.5])cube([7,2,1.5]);
    translate([-(4+partsGap)/2,-2.5,8-(0.8+partsGap)])cube([4+partsGap,3,0.8+partsGap]);
  }

  difference(){
    translate([-7/2,19+0.8,8-1.5])cube([7,2,1.5+2]);
    translate([-(4+partsGap)/2,19,8-(0.8+partsGap)])cube([4+partsGap,3,0.8+partsGap]);
  }
}
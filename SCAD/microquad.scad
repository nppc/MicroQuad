$fn=100;
Bheight=0.7;
fs=48/2;

// Camera footprint is 7x15
camX=7;
camY=15;
camAngle=10;


// For printing
//translate([fs,fs,0])rotate([0,0,-45]){p_guard_duct();}
//translate([-fs,-fs,0])rotate([0,0,135]){p_guard_duct();}
//translate([-fs,fs,0])rotate([0,0,45]){p_guard_duct();}
//translate([fs,-fs,0])rotate([0,0,-135]){p_guard_duct();}



//translate([fs,fs,0])rotate([0,0,-45]){p_guard_duct();prop();}
//translate([-fs,-fs,0])rotate([0,0,135]){p_guard_duct();prop();}
//translate([-fs,fs,0])rotate([0,0,45]){p_guard_duct();prop();}
//translate([fs,-fs,0])rotate([0,0,-135]){p_guard_duct();prop();}


//translate([0,0,-5])cube([43,17,6],center=true); // Battery

/*
rotate([0,0,45])esc();
rotate([0,0,-45])esc();
rotate([0,0,135])esc();
rotate([0,0,-135])esc();

translate([0,0,2.2])color("PURPLE")cube([11.3,11.3,2.5],center=true);    // FC

frame();


translate([0,0,1])cameramount(5);
*/

//translate([0,0,1])cameramount(6.5);
/*
translate([15,-30,0])rotate([0,0,45]){
frame();
translate([45,24,0])frame();
translate([-24,45,0])frame();
translate([21,69,0])frame();
}
*/
frm_hght=1.9;
difference(){
    hull(){
    translate([55/2,55/2,0])cylinder(d=110,h=frm_hght,center=true);
    translate([-55/2,55/2,0])cylinder(d=110,h=frm_hght,center=true);
    translate([55/2,-55/2,0])cylinder(d=110,h=frm_hght,center=true);
    translate([-55/2,-55/2,0])cylinder(d=110,h=frm_hght,center=true);
    }
    hull(){
    translate([50/2,50/2,0])cylinder(d=100,h=frm_hght+1,center=true);
    translate([-50/2,50/2,0])cylinder(d=100,h=frm_hght+1,center=true);
    translate([50/2,-50/2,0])cylinder(d=100,h=frm_hght+1,center=true);
    translate([-50/2,-50/2,0])cylinder(d=100,h=frm_hght+1,center=true);
    }
    
    cube([250,10,1], center=true);
    rotate([0,0,90])cube([250,10,1], center=true);
    rotate([0,0,45])cube([250,10,1], center=true);
    rotate([0,0,-45])cube([250,10,1], center=true);



}
//translate([1.3,0,13])rotate([0,camAngle,0])cube([7,15,15],center=true); // Cam

//p_guard_duct();

module p_guard(){
    color("CYAN")difference(){
        union(){
            pguardmount();
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

module p_guard_duct(){
    color("CYAN")difference(){
        union(){
            //fillet(r=4,steps=4){
                pguardmount();
                difference(){
                    bamper(-1.5,Bheight,1);
                    bamper(0,Bheight+0.2,4);
                }
            //}
            translate([0,0,Bheight*5])difference(){
                bamper(-0.8,Bheight*10,1);
                bamper(0,Bheight*10+0.2,1);
                cylinder(d=11, h=Bheight*20, center=true);
                rotate([13,0,0])translate([0,0,7])cube([40,25,20], center=true);
            }

        }
        translate([0,5.5/2,0])cylinder(d=1.7,h=Bheight+0.2, center=true);
        rotate([0,0,120])translate([0,5.5/2,0])cylinder(d=1.7,h=Bheight+0.2, center=true);
        rotate([0,0,-120])translate([0,5.5/2,0])cylinder(d=1.7,h=Bheight+0.2, center=true);    
        
        translate([0,12,5.75])rotate([0,90,0])hull(){
            cylinder(d=5,h=50, center=true);
            translate([-10,2,0])cylinder(d=5,h=50, center=true);
        }
        
        reduceweighthole();
        rotate([0,0,27])reduceweighthole();
        rotate([0,0,-27])reduceweighthole();

    }
}

module bamper(adj, hght, cant){
    hull(){
        cylinder(d=9.3-adj-cant,h=hght, center=true);
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
    
    translate([camX/2+0.55,-camY/2+2.3,height-2.9])triangleReinforcement();
    translate([camX/2+0.55,camY/2-2.3,height-2.9])rotate([0,0,180])triangleReinforcement();

    translate([0,camY/2-0.35,0.2])rotate([0,0,180])cube([7,2.4,0.4],center=true);

    //translate([-camX/2-0.55,camY/2-2.3,height-1.47])rotate([0,0,180])triangleReinforcement();
    translate([-camX/2+1.05,camY/2-1,height-1.6])rotate([0,0,180])triangleReinforcement();
    translate([-camX/2+0.96,-camY/2+0.5,height-0.81])scale([1,0.45,0.45])triangleReinforcement();

    translate([-camX/2-3,-camY/2+1.15,height-1])rotate([0,0,-90])triangleReinforcement();

    translate([-camX/2-1.5,-camY/2-0.45,height-1.7])rotate([0,0,-90])triangleReinforcement();
    translate([camX/2-2.5,-camY/2-0.45,height-2])rotate([0,0,90])triangleReinforcement();

    translate([-camX/2+2.5,camY/2+0.45,height-2])rotate([0,0,-90])triangleReinforcement();
    translate([camX/2-2.5,camY/2+0.45,height-2])rotate([0,0,90])triangleReinforcement();


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


module pguardmount(){
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
    cylinder(d=7.5,h=Bheight, center=true);
    
    pguardmountjoint();
    mirror([1,0,0])pguardmountjoint();

}

module pguardmountjoint(){
    hull(){
        translate([2,0,0])cylinder(d=4,h=Bheight, center=true);
        translate([10,5,0])cylinder(d=1,h=Bheight, center=true);
    }
}


module reduceweighthole(){
    rotate([90,0,0])hull(){
        translate([2,3,-15])cylinder(d=3,h=30, center=true);
        translate([-2,3,-15])cylinder(d=3,h=30, center=true);
    }
    
}

module triangleReinforcement(){
    rotate([0,90,0])difference(){
        cube([2.5,2.5,0.8], center=true);
        translate([5,2,0])rotate([0,0,45])cube([10,10,1], center=true);
    }
}

/*
// Fillet function

module fillet(r=1.0,steps=3,include=true) {
  if(include) for (k=[0:$children-1]) {
	children(k);
  }
  for (i=[0:$children-2] ) {
    for(j=[i+1:$children-1] ) {
	fillet_two(r=r,steps=steps) {
	  children(i);
	  children(j);
	  intersection() {
		children(i);
		children(j);
	  }
	}
    }
  }
}

module fillet_two(r=1.0,steps=3) {
  for(step=[1:steps]) {
	hull() {
	  render() intersection() {
		children(0);
		offset_3d(r=r*step/steps) children(2);
	  }
	  render() intersection() {
		children(1);
		offset_3d(r=r*(steps-step+1)/steps) children(2);
	  }
	}
  }
}

module offset_3d(r=1.0) {
  for(k=[0:$children-1]) minkowski() {
	children(k);
	sphere(r=r,$fn=8);
  }
}

*/

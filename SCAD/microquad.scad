$fn=50;
Bheight=0.85;
fs=48/2;

// Camera footprint is 15x7

translate([fs,fs,0])rotate([0,0,-45]){p_guard();prop();}
translate([-fs,-fs,0])rotate([0,0,135]){p_guard();prop();}
translate([-fs,fs,0])rotate([0,0,45]){p_guard();prop();}
translate([fs,-fs,0])rotate([0,0,-135]){p_guard();prop();}
translate([0,0,-5])cube([43,17,6],center=true);

translate([0,0,13])rotate([0,10,0])cube([7,15,15],center=true);

module p_guard(){
    difference(){
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
        translate([0,1.8,0])cylinder(d=3.3,h=hght, center=true);
        
    }
}

module prop(){
    color("WHITE")translate([0,0,9])cylinder(d=40,h=0.1, center=true);
}

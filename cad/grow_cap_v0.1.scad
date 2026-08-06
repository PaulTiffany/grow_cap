// SPDX-License-Identifier: CERN-OHL-P-2.0
// grow_cap v0.1 — nominal parametric fabrication source
// Units: millimetres. Experimental dimensional prototype.

$fn = 128;
part = "assembly"; // cap | funnel | sump | basket | collar | coupon | assembly

cap_d = 140;
cap_t = 5;
plant_open_d = 38;
plant_collar_od = 46;
plant_collar_h = 16;
clean_x = -43;
clean_y = 6;
clean_socket_d = 8;
dirty_x = 39;
dirty_y = 6;
dirty_socket_d = 43;

module ring(od,id,h){difference(){cylinder(d=od,h=h);translate([0,0,-.1])cylinder(d=id,h=h+.2);}}

module cap(){
 difference(){
  union(){
   cylinder(d=cap_d,h=cap_t);
   translate([0,0,cap_t-.1]) ring(plant_collar_od,plant_open_d,plant_collar_h+.1);
  }
  translate([0,0,-.2]) cylinder(d=plant_open_d,h=cap_t+plant_collar_h+.4);
  translate([clean_x,clean_y,-.2]) cylinder(d=clean_socket_d,h=cap_t+.4);
  translate([dirty_x,dirty_y,-.2]) cylinder(d=dirty_socket_d,h=cap_t+.4);
  translate([0,-58,-.2]) cylinder(d=4,h=cap_t+.4);
 }
}

module funnel(){
 difference(){
  union(){
   cylinder(d=7,h=16);
   translate([0,0,14]) cylinder(d=12.4,h=6);
   translate([0,0,18]) cylinder(d=36,h=3);
   translate([0,0,20]) cylinder(d1=18,d2=34,h=18);
   translate([0,0,38]) ring(36,28.4,2);
  }
  translate([0,0,-.2]) cylinder(d=4,h=21);
  translate([0,0,18]) cylinder(d1=4.4,d2=28.4,h=20.3);
 }
}

module sump(){
 difference(){
  union(){cylinder(d=42,h=38);translate([0,0,35])cylinder(d=49,h=3);}
  translate([0,0,3]) cylinder(d=36.5,h=35.3);
  translate([0,0,-.2]) cylinder(d=8.2,h=3.5);
 }
}

module basket(){
 difference(){
  union(){cylinder(d=34.5,h=31);translate([0,0,28])cylinder(d=39.5,h=3);}
  translate([0,0,2.4]) cylinder(d=29,h=29);
  for(a=[0:30:330]) rotate([0,0,a]) translate([15.5,-1.5,8]) cube([4,3,15]);
  for(a=[0:45:315]) translate([8*cos(a),8*sin(a),-.2]) cylinder(d=3,h=3);
  translate([0,0,-.2]) cylinder(d=4,h=3);
 }
}

module collar(stem_d=14){
 difference(){
  ring(37.1,stem_d,12);
  translate([0,-1.4,-.2]) cube([20,2.8,12.4]);
 }
}

module coupon(){
 difference(){
  cube([96,50,5]);
  translate([18,25,-.2]) cylinder(d=8,h=5.4);
  translate([51,25,-.2]) cylinder(d=43,h=5.4);
  translate([84,25,-.2]) cylinder(d=8.2,h=5.4);
 }
}

if(part=="cap") cap();
else if(part=="funnel") funnel();
else if(part=="sump") sump();
else if(part=="basket") basket();
else if(part=="collar") collar();
else if(part=="coupon") coupon();
else {
 color("#343837") cap();
 color("#4aa3df") translate([clean_x,clean_y,cap_t+28]) funnel();
 color("#9b6a37") translate([dirty_x,dirty_y,cap_t]) sump();
 color("#6f4c2e") translate([dirty_x,dirty_y,cap_t+42]) basket();
 color("#6ca85f") translate([0,0,cap_t+25]) collar();
}

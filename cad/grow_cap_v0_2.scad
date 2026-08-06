// SPDX-License-Identifier: CERN-OHL-P-2.0
// grow_cap v0.2 — restored modular nutrient cycling architecture
// Experimental prototype. Validate with water before introducing organisms.
$fn = 128;
part = "assembly"; // lid, mulch_tray, biocore, biochar_tray, base, restrictor, assembly

OD=120; ID=48; wall=3; fit=0.45;
lid_h=10; tray_h=22; bio_h=42; char_h=20; base_h=25;
clean_port_d=8.2; dirty_port_d=18; vent_d=5; outlet_d=6;

module ring(od,id,h){difference(){cylinder(d=od,h=h);translate([0,0,-.1])cylinder(d=id,h=h+.2);}}
module shell(h){ring(OD,ID,h);}
module perforations(r,z0,h,n=16,d=3){for(a=[0:360/n:359])rotate([0,0,a])translate([r,0,z0])rotate([90,0,0])cylinder(d=d,h=h,center=true);}

module lid(){
 difference(){
  union(){cylinder(d=OD,h=lid_h);translate([0,0,lid_h])ring(ID+10,ID,14);}
  translate([0,0,-.1])cylinder(d=ID,h=lid_h+15);
  translate([-38,0,-.1])cylinder(d=clean_port_d,h=lid_h+.2);
  translate([38,0,-.1])cylinder(d=dirty_port_d,h=lid_h+.2);
  translate([0,-48,-.1])cylinder(d=vent_d,h=lid_h+.2);
 }
}

module mulch_tray(){
 difference(){
  union(){shell(tray_h);translate([0,0,0])ring(OD-2*wall,ID+2*wall,2.4);}
  for(a=[0:30:330])translate([34*cos(a),34*sin(a),-.1])cylinder(d=4,h=3);
 }
}

module biocore(){
 difference(){
  union(){shell(bio_h);ring(OD-2*wall,ID+2*wall,2.4);}
  perforations(OD/2-wall/2,bio_h/2,16,n=20,d=3.2);
  for(a=[0:30:330])translate([34*cos(a),34*sin(a),-.1])cylinder(d=4,h=3);
 }
}

module biochar_tray(){
 difference(){
  union(){shell(char_h);ring(OD-2*wall,ID+2*wall,2.4);}
  for(a=[0:30:330])translate([34*cos(a),34*sin(a),-.1])cylinder(d=3.2,h=3);
 }
}

module base(){
 difference(){
  union(){cylinder(d=OD,h=base_h);translate([0,0,base_h])ring(OD,ID,5);}
  translate([0,0,-.1])cylinder(d=ID,h=base_h+5.2);
  translate([-38,0,-.1])cylinder(d=clean_port_d,h=base_h+.2);
  translate([0,0,4])cylinder(d=OD-2*wall,h=base_h);
  translate([38,0,-.1])cylinder(d=outlet_d,h=base_h+.2);
  translate([52,0,base_h-8])rotate([0,90,0])cylinder(d=8,h=12);
 }
}

module restrictor(orifice=2.0){difference(){cylinder(d=10,h=8);translate([0,0,-.1])cylinder(d=orifice,h=8.2);}}

if(part=="lid") lid();
else if(part=="mulch_tray") mulch_tray();
else if(part=="biocore") biocore();
else if(part=="biochar_tray") biochar_tray();
else if(part=="base") base();
else if(part=="restrictor") restrictor();
else {
 color("#30343a") base();
 translate([0,0,base_h+6]) color("#292929") biochar_tray();
 translate([0,0,base_h+char_h+12]) color("#6b4226") biocore();
 translate([0,0,base_h+char_h+bio_h+18]) color("#8a5b34") mulch_tray();
 translate([0,0,base_h+char_h+bio_h+tray_h+24]) color("#30343a") lid();
}

h=33;   // height
w=24;   // width
d=20;   //depth
/* [Hidden] */
lt=1.5; // leg thickness
o=3;    // leg offset

//leg1 front left
translate([o,o,0])
    cube([lt,lt,h]);
    
//leg2 front right
translate([w-o-lt,o,0])
    cube([lt,lt,h]);
    
//leg3 rear left
translate([o,d-o-lt,0])
    cube([lt,lt,h]);
    
//leg4 rear right
translate([w-o-lt,d-o-lt,0])
    cube([lt,lt,h]);
    echo("Legs are" ,h, "inches long made with 2 by 2 inch lumber");

//top
translate([0,0,h])
    cube([w,d,0.75]);
    echo("Top is ",w," inches wide by ",d," inches deep made with 3/4 inch plywood");
    
//back
translate([o,d-o,0.333*h-1.75])
    color([1,0,0])
    cube([w-2*o,0.5,h*0.667+1.75]);
    echo("Back is ",w-2*o,"w by ",h*0.667+2," inches h made with 1/2 inch plywood");
    
//left side
translate([o-0.5,o,0.333*h-1.75])
    color([0,0,1])
    cube([0.5,d-2*o+0.5,h*0.667+1.75]);
    echo("Left side and Right side are ",d-2*o+0.5,"w by ",h*0.667+2," inches h made with 1/2 inch plywood");
    
//right side
translate([w-o,o,0.333*h-1.75])
    color([0,0,1])
    cube([0.5,d-2*o+0.5,h*0.667+1.75]);
    
    
//bottom with legs cut out
difference()
{
translate([o,o+.002,0.333*h])
    color([0,1,0])
    //bottom
    cube([w-o*2,d-o*2,0.75]);
    echo("Bottom is ",w-o*2,"w by ",d-0*2,"d with 1.5 inch by 1.5 inch cutouts on each corner made with 3/4 inch plywood");
translate([o,o,0])
    //cut out front left leg
    cube([lt+.01,lt+.01,h]);
translate([w-o-lt,o,0])
    //cut out front right leg
    cube([lt+.01,lt+.01,h]);
translate([o,d-o-lt,0])
    //cut out rear left leg
    cube([lt+.01,lt+.01,h]);
translate([w-o-lt,d-o-lt,0])
    //cut out rear right leg
    cube([lt+.01,lt+.01,h]);    
}


translate([w/2,d/2,0.333*h+0.75])
    // wheat berries container
    cylinder(h=15,d=12);
    echo("Wheat berries container is 5-gallon container that is 12 inches in diameter by 15 inches in height");
translate([o-0.5,o-0.75,h-2.5])
    color([1,0,1])
    // upper horizontal face frame
    cube([w-2*o+1,0.75,2.5]);

translate([o-0.5,o-0.75,0.333*h-1.75])
    color([1,0,1])
    // lower horizontal face frame
    cube([w-2*o+1,0.75,2.5]);
    echo("Upper and lower horizontal face frames are ",w-2*o+1," inches long made with 1 by 3 inch lumber");

translate([o-0.5,o-0.75,0.333*h+0.75])
    color([1,0,1])
    // left vertical face frame
    cube([2.5,0.75,h-2.5-(0.333*h+0.75)]);
    
translate([w-o-2,o-0.75,0.333*h+0.75])
    color([1,0,1])
    // right vertical face frame
    cube([2.5,0.75,h-2.5-(0.333*h+0.75)]);
    echo("Left and right vertical face frames are ",h-2.5-(0.333*h+0.75)," inches long made with 1 by 3 inch lumber");
translate([o+2.25,o-0.875,0.333*h+1])
    color([0,1,1])
    // door insert
    cube([w-2*o-4.5,0.5,h-0.333*h-3.75]);
    echo("Door insert is ",w-2*o-4.5," inches wide by",h-0.333*h-3.75," inches in height made with 1/2 inch plywood");
translate([o+1.75,o-1.625,0.333*h+0.5])
    color([1,0,0])
    // door lower horizontal frame
    cube([w-2*o-3.5,0.75,2.5]);
   
translate([o+1.75,o-1.625,h-4.75])
    color([1,0,0])
    // door upper horizontal frame
    cube([w-2*o-3.5,0.75,2.5]);
    echo("Door upper and lower horizontal frames are ",w-2*o-3.5," inches long made with 1 by 3 inch lumber");
translate([o+1.75,o-1.625,0.333*h+3])
    color([1,0,0])
    // door left vertical frame
    cube([2.5,0.75,h-0.333*h-7.75]);
    
translate([w-o-4.25,o-1.625,0.333*h+3])
    color([1,0,0])
    // door right vertical frame
    cube([2.5,0.75,h-0.333*h-7.75]);
    echo("Door left and right vertical frames are ",h-0.333*h-7.75," inches long made with 1 by 3 inch lumber");
    
    



    
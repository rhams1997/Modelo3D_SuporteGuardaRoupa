include <BOSL2/std.scad>
include <BOSL2/threading.scad>
include <BOSL/constants.scad>
use <BOSL/masks.scad>

module cubo_externo(){
translate([0,0,7]){
cube([8,29,14], center = true);
}
}

module borda_arredondadaExterna_esquerda(){
    translate([4,14,13]){
    rotate([0,0,-90]){
        #fillet_angled_edge_mask(h=30, r=3.0, ang=100, $fn=32);
    }
}
}

module borda_arredondadaExterna_direita(){
    translate([-4,14,13]){
    rotate([0,0,-90]){
        #fillet_angled_edge_mask(h=30, r=3.0, ang=100, $fn=32);
    }
}
}

module cubo_interno(){
    difference(){
translate([0,0,5.45]){
cube([5,26,11], center = true);
}
//borda_arredondadaInterna_direita();
//borda_arredondadaInterna_esquerda();
        borda_arredondadaInterna_direita1();
        borda_arredondadaInterna_esquerda2();
}
}

module borda_arredondadaInterna_direita(){
    translate([2.6,13,9]){
    rotate([0,0,-84]){
        #fillet_angled_edge_mask(h=30, r=2.0, ang=100, $fn=32);
    }
}
}

module borda_arredondadaInterna_esquerda(){
    translate([-2.6,13,9]){
    rotate([0,0,-97]){
        #fillet_angled_edge_mask(h=30, r=2.0, ang=100, $fn=32);
    }
}
}
//
module borda_arredondadaInterna_direita1(){
    translate([3,-12.8,9]){
    rotate([0,0,100]){
        #fillet_angled_edge_mask(h=30, r=1.0, ang=100, $fn=32);
    }
}
}

module borda_arredondadaInterna_esquerda2(){
    translate([-3,-12.8,9]){
    rotate([0,0,85]){
        #fillet_angled_edge_mask(h=30, r=1.0, ang=100, $fn=32);
    }
}
}
//

module mesclar_cubo(){  
    difference(){
        cubo_externo();
        cubo_interno();
        cilindro_interno();
        //cilindro_interno2();
        borda_arredondadaExterna_esquerda();
        borda_arredondadaExterna_direita();   
    }  
}

///

module cilindro_externo(){
    translate([0,0,5.45]){
        cylinder(h= 11, d=7.8, center=true, $fn = 400);
    }
}
//

module cilindro_interno(){
    translate([0,0,7]){
        cylinder(h= 15, d=2.8, center=true, $fn = 400);
    }
} 
//

module rosca(){
translate([0,0,5]){
thread_helix(d=2, pitch=4, thread_depth=0.75, flank_angle=15, turns=2.6, $fn=400);
}
}
//

module cilindro_interno2(){
    color("red")
    translate([0,11.5,15]){
        cylinder(h= 15, d=3, center=true, $fn = 400);
    } 
}
//

module mesclar_cilindro(){  
    difference(){
        cilindro_externo();
        cilindro_interno();
     rosca();   
    }  
}
////

module cubo_superior(){
translate([0,10.999,13.5]){
    color("blue")
cube([8,7,28], center = true);
}
}
//

module mesclar_cilindroSuperior(){
    translate([0,0 ,0.5]){
    difference(){
        cubo_superior();
        //cilindro_interno2();
        borda_arredondadaExterna_esquerda();
        borda_arredondadaExterna_direita();
    }
}
}
//

module trava_orizontal(){
translate([0,2.5,20.5]){
    color("red")
cube([5,15.5,11], center = true);
}
}
//
module pino_superiorNaTravaHorizontal(){
translate([0,-2,26.2]){
        color("orange")
        cylinder(h= 1, d=1.2, center=true, $fn = 400);
    }
}
//

module achata_inicio_direito(){
translate([2.9,3.5,22.5]){
color("blue")
cube([1,6.5,7.1], center = true);
}
}
//

module achata_inicio_esquerda(){
translate([-2.9,3.5,22.5]){
color("blue")
cube([1,6.5,7.1], center = true);
}
}
//

//
module achata_fim_direito(){
translate([2.9,0,20.5]){
    rotate([0,0,-5]){
        color("blue")
        cube([1,12,12.2], center = true);
    }
}
}

//
module achata_fim_esquerdo(){
translate([-2.9,0,20.5]){
    rotate([0,0,5]){
        color("blue")
        cube([1,12,12.2], center = true);
    }
}
}
//

module achata_fim_bico(){
translate([-2.9,0,14.5]){
    rotate([90,-83,90]){
        color("blue")
        cube([1,12,12.2], center = true);
    }
}
}

module trava_orizontalInterna(){
    difference(){
translate([0,0,20.5]){
    color("blue")
cube([2.5,13.5,8], center = true);
}
arredondaTrava_orizontalInternaDireita();
arredondaTrava_orizontalInternaEsquerda();
arredondaSuperiorEsquerdo();
arredondaSuperiorDireito();
}
}

//Funções para arredondar bordas internas inferior direita e esquerda
module arredondaTrava_orizontalInternaEsquerda(){
translate([-2,-8.2,16]){
    rotate([0,-90,90]){
        #fillet_angled_edge_mask(h=30, r=1.0, ang=90, $fn=32);
    }
}
}
//
module arredondaTrava_orizontalInternaDireita(){
translate([2,-8.2,16]){
    rotate([0,-90,90]){
        #fillet_angled_edge_mask(h=30, r=1.0, ang=90, $fn=32);
    }
}
}
//fim

//Funções para arredondar bordas internas superior direita e esquerda
module arredondaSuperiorEsquerdo(){
translate([-2,-8.2,25]){
    rotate([0,90,-90]){
        #fillet_angled_edge_mask(h=30, r=1.0, ang=90, $fn=32);
    }
}
}
//
module arredondaSuperiorDireito(){
translate([2,-8.2,25]){
    rotate([0,90,-90]){
        #fillet_angled_edge_mask(h=30, r=1.0, ang=90, $fn=32);
    }
}
}
//fim

module rasgo_lateral(){
translate([0,0,20.5]){
    color("orange")
cube([6,13.5,3], center = true);
}
}

//
module mesclar_trava(){
    translate([0,-1.5,0.4]){
    difference(){
        trava_orizontal();
        trava_orizontalInterna(); 
        rasgo_lateral();
        achata_inicio_direito();
        achata_inicio_esquerda();
        achata_fim_direito();
        achata_fim_esquerdo();
        achata_fim_bico();
    }
    pino_superiorNaTravaHorizontal();
}
}
//

union(){
    translate([0,0,0]){
        mesclar_cubo();
        mesclar_cilindro();
        mesclar_cilindroSuperior();
        mesclar_trava();
    }
//pino_superiorNaTravaHorizontal();
}
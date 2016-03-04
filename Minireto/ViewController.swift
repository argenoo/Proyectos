//
//  ViewController.swift
//  Minireto
//
//  Created by Argenis García Jiménez on 03/03/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MINI RETO
    //LLENA UN RANGO DEL 0 AL 100 CON FOR
    for var i = 0; i <= 100; i++
    {
    //COMPARA LOS IMPARES
    if i==1 || i==3 || i==5 || i==7 || i==9 || i==11 || i==13 || i==15 || i==17 || i==19 || i==21 || i==23 || i==25 || i==27 || i==29 || i==31 || i==33 || i==35 || i==37 || i==39 || i==41 || i==43 || i==45 || i==47 || i==49 || i==51 || i==53 || i==55 || i==57 || i==59 || i==61 || i==63 || i==65 || i==67 || i==69 || i==71 || i==73 || i==75 || i==77 || i==79 || i==81 || i==83 || i==85 || i==87 || i==89 || i==91 || i==93 || i==95 || i==97 || i==99 {
    //si encuentra los divisibles entre 5 y del 30 al 40 imprime con switch
    switch i {
    case 5,15,25,45,55,65,75,85,95:
    print("\(i)" + " #IMPAR" + " #BINGO!!!")
    case 30...40:
    if i==35 {
    print("\(i)" + " #IMPAR" + " #BINGO!!!" + " #VIVA SWIFT!!!")}
    else
    {
    print("\(i)" + " #IMPAR" + " #VIVA SWIFT!!!")}
    default:
    print("\(i)" + " #IMPAR")}
    }
    //COMPARA LOS PARES
    else if i==0 || i==2 || i==4 || i==6 || i==8 || i==10 || i==12 || i==14 || i==16 || i==18 || i==20 || i==22 || i==24 || i==26 || i==28 || i==30 || i==32 || i==34 || i==36 || i==38 || i==40 || i==42 || i==44 || i==46 || i==48 || i==50 || i==52 || i==54 || i==56 || i==58 || i==60 || i==62 || i==64 || i==66 || i==68 || i==70 || i==72 || i==74 || i==76 || i==78 || i==80 || i==82 || i==84 || i==86 || i==88 || i==90 || i==92 || i==94 || i==96 || i==98 || i==100{
    //si encuentra los divisibles entre 5 y del 30 al 40 imprime con switch
    switch i {
    case 10,20,50,60,70,80,90,100:
    print("\(i)" + " #PAR" + " #BINGO!!!")
    case 30...40:
    if i==30 || i==40 {
    print("\(i)" + " #PAR" + " #BINGO!!!" + " #VIVA SWIFT!!!")}
    else
    {
    print("\(i)" + " #PAR" + " #VIVA SWIFT!!!")}
    default:
    print("\(i)" + " #PAR")}
    }
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


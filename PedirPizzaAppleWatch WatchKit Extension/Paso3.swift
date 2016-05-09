//
//  Paso3.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit
import Foundation


class Paso3: WKInterfaceController {
    var resultados2 = ["","","","","","","",""]
    var interruptorM : Bool = false
    var interruptorP : Bool = false
    var interruptorC : Bool = false
    var interruptorS : Bool = false
        var resulT : String = ""
        var resulM : String = ""
    @IBOutlet var bandera3: WKInterfaceLabel!
    
    @IBOutlet var resultadoQueso: WKInterfaceLabel!
    
    @IBAction func botonMozzarela() {
        self.resultadoQueso.setText("MOZZARELA")
        interruptorM  = true
        interruptorP  = false
        interruptorC  = false
        interruptorS  = false
    }
    
    @IBAction func botonParmesano() {
        self.resultadoQueso.setText("PARMESANO")
        interruptorM  = false
        interruptorP  = true
        interruptorC  = false
        interruptorS  = false
    }
    
    @IBAction func botonCheddar() {
        self.resultadoQueso.setText("CHEDDAR")
        interruptorM  = false
        interruptorP  = false
        interruptorC  = true
        interruptorS  = false
    }
    
    @IBAction func botonSinQueso() {
        self.resultadoQueso.setText("SIN QUESO")
        interruptorM  = false
        interruptorP  = false
        interruptorC  = false
        interruptorS  = true
    }
    
    @IBAction func botonBorrar() {
        self.resultadoQueso.setText("")
        interruptorM  = false
        interruptorP  = false
        interruptorC  = false
        interruptorS  = false
    }
    
    @IBAction func botonElegir() {
        var resulQ : String = ""
        if interruptorM==true{
            resulQ = "MOZZARELA"
        }
        if interruptorP==true{
            resulQ = "PARMESANO"
        }
        if interruptorC==true{
            resulQ = "CHEDAR"
        }
        if interruptorS==true{
            resulQ = "SIN QUESO"
        }
        // let resulT = String(resultadoTamaño.hash)
         let valorContexto4 = [Valor1(rt: resulT),Valor2(rm: resulM),Valor3(rq: resulQ),"","","","",""]
        pushControllerWithName("IdentificadorValor3", context: valorContexto4)
    }

    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
         let c2 = context! [1] as! Valor2
         let c1 = context! [0] as! Valor1
        
       resultados2[1]=c2.resultadoM
        resultados2[0]=c1.resultadoT
         resulT = c1.resultadoT
         resulM = c2.resultadoM
        self.bandera3.setText(resultados2[0]+"     "+resultados2[1])
        
        // Configure interface objects here.
    }
    

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

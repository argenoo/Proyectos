//
//  Paso2.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit
import Foundation


class Paso2: WKInterfaceController {
    var interruptorD : Bool = false
    var interruptorC : Bool = false
    var interruptorG : Bool = false
    var resultados = ["","","","","","","",""]
    var resulT : String = ""
    
 @IBOutlet var bandera2: WKInterfaceLabel!
    
    @IBOutlet var resultadoMasa: WKInterfaceLabel!
    @IBAction func botonDelgada() {
        self.resultadoMasa.setText("DELGADA")
        interruptorD  = true
        interruptorC  = false
        interruptorG  = false
    }
    
    @IBAction func botonCrujiente() {
        self.resultadoMasa.setText("CRUJIENTE")
        interruptorD  = false
        interruptorC  = true
        interruptorG  = false
    }
    
    @IBAction func botonGruesa() {
        self.resultadoMasa.setText("GRUESA")
        interruptorD  = false
        interruptorC  = false
        interruptorG  = true
    }
    
    @IBAction func botonBorrar() {
        self.resultadoMasa.setText("")
        interruptorD  = false
        interruptorC  = false
        interruptorG  = false
    }
    
    @IBAction func botonElegir() {
        var resulM : String = ""
        if interruptorD==true{
            resulM = "DELGADA"
        }
        if interruptorC==true{
            resulM = "CRUJIENTE"
        }
        if interruptorG==true{
            resulM = "GRUESA"
        }
        let valorContexto3 = [Valor1(rt: resulT),Valor2(rm: resulM),"","","","","",""]
        pushControllerWithName("IdentificadorValor2", context: valorContexto3)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context! [0] as! Valor1
        
        resultados[0]=c.resultadoT
        resulT = c.resultadoT
        self.bandera2.setText(resultados [0])
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

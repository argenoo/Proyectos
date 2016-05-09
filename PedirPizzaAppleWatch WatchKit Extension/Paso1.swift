//
//  Paso1.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit
import Foundation


class Paso1: WKInterfaceController {
    var interruptorC : Bool = false
    var interruptorM : Bool = false
    var interruptorG : Bool = false

    @IBAction func botonChica() {
        self.resultadoTamaño.setText("CHICA")
        interruptorC  = true
        interruptorM  = false
        interruptorG  = false
    }
    
    @IBAction func botonMediana() {
        self.resultadoTamaño.setText("MEDIANA")
        interruptorC  = false
        interruptorM  = true
        interruptorG  = false
    }
    
    @IBAction func botonGrande() {
        self.resultadoTamaño.setText("GRANDE")
        interruptorC  = false
        interruptorM  = false
        interruptorG  = true
    }
    
    @IBAction func botonBorrar() {
        self.resultadoTamaño.setText("")
        interruptorC  = false
        interruptorM  = false
        interruptorG  = false
    }
    
    @IBAction func botonElegir() {
        var resulT : String = ""
        if interruptorC==true{
        resulT = "CHICA"
        }
        if interruptorM==true{
            resulT = "MEDIANA"
        }
        if interruptorG==true{
            resulT = "GRANDE"
        }
        let valorContexto2 = [Valor1(rt: resulT),"","","","","","",""]
        pushControllerWithName("IdentificadorValor1", context: valorContexto2)
        
    }

    @IBOutlet var resultadoTamaño: WKInterfaceLabel!
    
    override func awakeWithContext(context0: AnyObject?) {
        super.awakeWithContext(context0)
        
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

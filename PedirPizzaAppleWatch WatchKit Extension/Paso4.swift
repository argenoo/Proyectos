//
//  Paso4.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit
import Foundation


class Paso4: WKInterfaceController {
   var resultados3 = ["","","","","","","",""]

     var swjamon : Bool = false
     var swpavo : Bool = false
     var swpepperoni : Bool = false
     var swsalchicha : Bool = false
     var swaceituna : Bool = false
     var swcebolla : Bool = false
     var swpimiento : Bool = false
     var swpiña : Bool = false
     var swanchoa : Bool = false
    var textoIngredientes : String = ""
    var contador : Int = 1
    var resulT : String = ""
    var resulM : String = ""
    var resulQ : String = ""

     @IBOutlet var bandera4: WKInterfaceLabel!
    
    @IBOutlet var resultadoIngredientes: WKInterfaceLabel!
    
    @IBAction func InterruptorJamon(value: Bool) {
        if swjamon == true {
           textoIngredientes = textoIngredientes.self
        }
        else
        {
           if contador <= 5 {
           self.textoIngredientes = textoIngredientes + "JAMON, "
            }
        }
      self.resultadoIngredientes.setText(textoIngredientes)
    swjamon = true
       contador = contador + 1
        
    }
    @IBAction func InterruptorPepperoni(value: Bool) {
        if swpepperoni == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "PEPPERONI, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swpepperoni = true
        contador = contador + 1

    }
    @IBAction func InterruptorPavo(value: Bool) {
        if swpavo == true {
            textoIngredientes = textoIngredientes.self
            swpavo = false
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "PAVO, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swpavo = true
        contador = contador + 1
    }
    @IBAction func InterruptorSalchicha(value: Bool) {
        if swsalchicha == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "SALCHICHA, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swsalchicha = true
        contador = contador + 1
    }
    @IBAction func InterruptorAceituna(value: Bool) {
        if swaceituna == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "ACEITUNA, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swaceituna = true
        contador = contador + 1
    }
    @IBAction func InterruptorCebolla(value: Bool) {
        if swcebolla == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "CEBOLLA, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swcebolla = true
        contador = contador + 1
    }
    @IBAction func InterruptorPimiento(value: Bool) {
        if swpimiento == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "PIMIENTO,  "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swpimiento = true
        contador = contador + 1
    }
    @IBAction func InterruptorPiña(value: Bool) {
        if swpiña == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "PIÑA, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swpiña = true
        contador = contador + 1
    }
    @IBAction func InterruptorAnchoa(value: Bool) {
        if swanchoa == true {
            textoIngredientes = textoIngredientes.self
        }
        else
        {
            if contador <= 5 {
                self.textoIngredientes = textoIngredientes + "ANCHOA, "
            }
        }
        self.resultadoIngredientes.setText(textoIngredientes)
        swanchoa = true
        contador = contador + 1
    }

    @IBAction func botonBorrar() {
        self.resultadoIngredientes.setText("")
        swpepperoni=false
        swjamon=false
        swpavo=false
        swpiña=false
        swanchoa=false
        swcebolla=false
        swaceituna=false
        swsalchicha=false
        swpimiento=false
        textoIngredientes = ""
        contador = 1
 
    }
    
    @IBAction func botonElegir() {
        var resulI : String = ""
       resulI = textoIngredientes

         let valorContexto5 = [Valor1(rt: resulT),Valor2(rm: resulM),Valor3(rq: resulQ),ValorVerificar(ri: resulI),"","","",""]
        pushControllerWithName("IdentificadorValorVerificar", context: valorContexto5)
    }

    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c3 = context! [2] as! Valor3
         let c2 = context! [1] as! Valor2
         let c1 = context! [0] as! Valor1
        
        resultados3[2]=c3.resultadoQ
        resultados3[1]=c2.resultadoM
        resultados3[0]=c1.resultadoT
        resulT = c1.resultadoT
        resulM = c2.resultadoM
        resulQ = c3.resultadoQ
        self.bandera4.setText(resultados3[0]+"     "+resultados3[1]+"     "+resultados3[2])
        
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

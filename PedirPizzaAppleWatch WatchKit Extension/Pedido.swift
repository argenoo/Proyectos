//
//  Pedido.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit
import Foundation


class Pedido: WKInterfaceController {
    var resultados4 = ["","","","","","","",""]
    var resulT : String = ""
    var resulM : String = ""
    var resulQ : String = ""
    var resulI : String = ""

    @IBOutlet var resultadoFinal: WKInterfaceLabel!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c4 = context! [3] as! ValorVerificar
        let c3 = context! [2] as! Valor3
        let c2 = context! [1] as! Valor2
        let c1 = context! [0] as! Valor1
        resultados4[3]=c4.resultadoI
        resultados4[2]=c3.resultadoQ
        resultados4[1]=c2.resultadoM
        resultados4[0]=c1.resultadoT
        resulT = c1.resultadoT
        resulM = c2.resultadoM
        resulQ = c3.resultadoQ
        resulI = c4.resultadoI
        if resultados4[3] == "" || resultados4[2] == "" || resultados4[1] == "" || resultados4[0] == ""  {
            resultadoFinal.setText("FALTA UN PASO          Por favor regresa y elige cuidadosamente los 4 pasos...")
        }
        else{
        resultadoFinal.setText("TU PIZZA SE ESTA COCINANDO...")
        }
        
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

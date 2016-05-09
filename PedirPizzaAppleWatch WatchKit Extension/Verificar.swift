//
//  Verificar.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit
import Foundation


class Verificar: WKInterfaceController {
   var resultados4 = ["","","","","","","",""]
    var resulT : String = ""
    var resulM : String = ""
    var resulQ : String = ""
    var resulI : String = ""
    @IBOutlet var bandera5: WKInterfaceLabel!
    
    @IBAction func botonElegir() {
        
        let valorContexto5 = [Valor1(rt: resulT),Valor2(rm: resulM),Valor3(rq: resulQ),ValorVerificar(ri: resulI),"","","",""]
        pushControllerWithName("IdentificadorValorPedido", context: valorContexto5)
    }
    
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
    self.bandera5.setText(resultados4[0]+"     "+resultados4[1]+"     "+resultados4[2]+"     "+resultados4[3])
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

//
//  ValorVerificar.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit

class ValorVerificar: NSObject {
    var resultadoI : String = ""
    var resultadoQ : String = ""
    var resultadoM : String = ""
    var resultadoT : String = ""
    
    init(ri : String)
    {
        resultadoI = ri
    }
    
    init(rm : String)
    {
        resultadoM = rm
        
    }
    init(rt : String)
    {
        resultadoT = rt
    }
    
    init(rq : String)
    {
        resultadoQ = rq
    }
}

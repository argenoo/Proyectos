//
//  Valor3.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit

class Valor3: NSObject {
    var resultadoQ : String = ""
    var resultadoM : String = ""
    var resultadoT : String = ""
    
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

//
//  Valor2.swift
//  PedirPizzaAppleWatch
//
//  Created by Argenis García Jiménez on 08/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import WatchKit

class Valor2: NSObject {
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
}

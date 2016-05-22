//
//  ViewController.swift
//  ServidorOpenlIBRARY
//
//  Created by Argenis García Jiménez on 22/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
     
     @IBOutlet weak var CajaISBN: UITextField!
    
     
     @IBAction func Busqueda(sender: AnyObject) {
    sincrono()
     }
     
     
     @IBAction func Limpiar(sender: AnyObject) {
        CajaResultado.text = ""
        CajaISBN.text = ""
     }
     
     
     @IBOutlet weak var CajaResultado: UITextView!
    
    
    func sincrono () {
        var resultadoTexto : String = ""
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        resultadoTexto = String(urls)
        resultadoTexto = resultadoTexto + CajaISBN.text!
        let url = NSURL(string : resultadoTexto)
        let datos : NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding:NSUTF8StringEncoding)
        
        if texto! == "{}" {
    CajaResultado.text = "EL SERVIDOR ESTA EN BLANCO"
    }
        else{
        CajaResultado.text = String(texto!)
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


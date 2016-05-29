//
//  ViewController.swift
//  ServidorOpenlIBRARY
//
//  Created by Argenis García Jiménez on 22/05/16.
//  Copyright © 2016 Argenis García Jiménez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate  {
 
     
     @IBOutlet weak var CajaISBN: UITextField!
    
     
     @IBAction func Busqueda(sender: AnyObject) {
    sincrono()
     }
     
     
     @IBAction func Limpiar(sender: AnyObject) {
        CajaResultado.text = ""
        CajaISBN.text = ""
     }
     
     
     @IBOutlet weak var CajaResultado: UITextView!
    
    @IBAction func textFieldDoneEditing(sender:UITextField){
        //Desaparece el teclado al presionar INTRO/SEARCH/etc
        sender.resignFirstResponder()
        sincrono()
    }
    
    @IBAction func backgroundTap(sender:UIControl){
        //Desaparece el teclado cuando toco fuera del campo
       CajaISBN.resignFirstResponder()
    }
    
    func sincrono () {
        var resultadoTexto : String = ""
        let urls = "https://openlibrary.org/api/books?jscmd=data&format=json&bibkeys=ISBN:"
        resultadoTexto = String(urls)
        resultadoTexto = resultadoTexto + CajaISBN.text!
        let url = NSURL(string : resultadoTexto)
        let datos : NSData? = NSData(contentsOfURL: url!)
        let texto = NSString(data:datos!, encoding:NSUTF8StringEncoding)
        //Validando en JSON pero jamas corrio en la explicación, lo cual estoy atorado
       /* do {
            let json = try NSJSONSerialization.JSONObjectWithData(datos!, options: NSJSONReadingOptions.MutableLeaves)
            let dico1 = json as! NSDictionary
            let dico2 = dico1["title"] as! NSDictionary
            let dico3 = dico2["authors"] as! NSDictionary
            let dico4 = dico2["name"] as! NSDictionary
            self.CajaISBN.text  = CajaISBN.text! +  String(dico2["title"] as! NSString as String)
            self.CajaISBN.text  = CajaISBN.text! +  String(dico4["name"] as! NSString as String)
        }
        catch {
            
        }
*/
        
        //validando conexion a internet y si la peticion vuelve vacía porque no encontró el isbn que buscamos -> {}
        if datos == nil{
            
            errorAlert("Error en la conexion", mensaje: "Hay un problema con tu conexión a internet. Por favor, checala e intenta de nuevo.")
            
        }else {
            
            if texto != "{}"{
                
                self.CajaResultado.text = texto! as String
                
            }else{
                
                self.errorAlert("Error en el ISBN", mensaje: "No se encontró un libro asociado al ISBN:\(CajaISBN) que ingresaste. Por favor, intenta de nuevo con otro ISBN.\n\nMuchas gracias!")
                
            }
            
        }
        
    }

    
    
    func errorAlert (error: String, mensaje: String) {
        let alert: UIAlertController = UIAlertController(title: error, message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(ok)
        presentViewController(alert, animated: true, completion: nil)
        CajaResultado.text = mensaje
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        CajaISBN.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


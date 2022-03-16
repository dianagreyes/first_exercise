//
//  ViewController.swift
//  Practica
//
//  Created by Diana G Reyes S on 05/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreCompleto: UITextField!
    
    @IBOutlet weak var correoElectronico: UITextField!
    
    @IBOutlet weak var telefono: UITextField!
    
    @IBOutlet weak var direccion: UITextField!
    
    @IBOutlet weak var terminosYCondiciones: UISwitch!
    
    @IBOutlet weak var labelAlerta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func isFormComplete(textFields:[UITextField]) -> Bool {

        var flag = false
        
        for textField in textFields {
            if textField.text != "" {
                flag = true
            } else {
                flag = false
                break
            }
        }
        return flag
    }
    
    
    
    @IBAction func aceptarFormulario(_ sender: Any) {
        
        if isFormComplete(textFields: [nombreCompleto,correoElectronico,telefono,direccion]) && terminosYCondiciones.isOn {
            
            labelAlerta.isHidden = true
            
            //Aqui se va a implementar el retorno a la pantalla del login
            
            
            performSegue(withIdentifier: "irATabla", sender: nil )
            
            
        } else {
            
            let alertaText = "Tienes que llenar el formulario completo"
            labelAlerta.text = alertaText
            labelAlerta.isHidden = false
           
            
        }
     
       /* if terminosYCondiciones.isOn {
            labelAlerta.isHidden = true
            
            } else {
                
            }
        
        
        */
    }
    
}


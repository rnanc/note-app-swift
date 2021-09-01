//
//  ViewController.swift
//  my-notes
//
//  Created by Renan Figueiredo Carneiro on 01/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var campoTexto: UITextView!
    
    @IBAction func salvarNota(_ sender: Any) {
        if let texto = campoTexto.text {
            UserDefaults.standard.set(texto, forKey: "nota")
        }
        
        
    }
    
    func recuperarNota() -> String {
        if let notaRecuperada = UserDefaults.standard.object(forKey: "nota") {
            return notaRecuperada as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        campoTexto.text = recuperarNota()
    }


}


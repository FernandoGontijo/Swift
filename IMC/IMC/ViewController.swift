//
//  ViewController.swift
//  IMC
//
//  Created by Fernando Gontijo on 09/08/19.
//  Copyright © 2019 Fernando Gontijo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var viResult: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func Calculate(_ sender: Any) {
        
        if let weight = Double(tfWeight.text!), let height = Double(tfHeight.text!){
            
            imc = weight / (height * height)
            showResults()
        }
    }
    
    
    func showResults(){
        
        var result: String = ""
        var image: String = ""
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "ideal"
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        }
       
        lbResult.text = "\(imc): \(result)"
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
        view.endEditing(true)
    }

}


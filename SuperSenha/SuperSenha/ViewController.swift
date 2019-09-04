//
//  ViewController.swift
//  SuperSenha
//
//  Created by Fernando Gontijo on 19/08/19.
//  Copyright © 2019 Fernando Gontijo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swNumber: UISwitch!
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
       
        if let numberOfPasswords = Int(tfTotalPasswords.text!)  {
            passwordsViewController.numberOfPasswords = numberOfPasswords
            
        }
        
       
        
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!)  {
            passwordsViewController.numberOfCharacters = numberOfCharacters
            
        }
        
        
        passwordsViewController.userLetters = swLetters.isOn
        passwordsViewController.useNumber = swNumber.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.userSpecialCharacters = swSpecialCharacters.isOn
        
     view.endEditing(true)
        
        
        
        
    }
    
    
    
 
    
    
    

}


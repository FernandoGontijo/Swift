//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Fernando Gontijo on 19/08/19.
//  Copyright © 2019 Fernando Gontijo. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var userLetters: Bool!
    var useNumber: Bool!
    var useCapitalLetters: Bool!
    var userSpecialCharacters: Bool!
    
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOFCharacters: numberOfCharacters, useLetters: userLetters, useNumber: useNumber, useCapitalLetters: useCapitalLetters, useSpecialLetters: userSpecialCharacters)
        
        ganeratePasswords()
       
        
        
    }
    
    
    
    
    func ganeratePasswords() {
        
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
      
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
    }

    }
    
    @IBAction func generate(_ sender: UIButton) {
        ganeratePasswords()
    }
    
    
    
    
    }
    


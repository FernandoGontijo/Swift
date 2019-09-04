//
//  PasswordsGenerator.swift
//  SuperSenha
//
//  Created by Fernando Gontijo on 19/08/19.
//  Copyright © 2019 Fernando Gontijo. All rights reserved.
//

import Foundation

class PasswordGenerator {
    
    
    var numberOFCharacters: Int
    var useLetters: Bool
    var useNumber: Bool
    var useCapitalLetters: Bool
    var useSpecialLetters: Bool
    
    
    var passwords: [String] = []
    
    
    private let letters = "abcdefghijklmnopqrstuvxwyz"
    private let specialCharacters = "!@#$%ˆ&*()_+=˜`|]}[{':;?/<>.,"
    private let number = "0123456789"
    
    init(numberOFCharacters: Int, useLetters: Bool, useNumber: Bool, useCapitalLetters: Bool, useSpecialLetters: Bool){
        
        
        
        var numchars = min(numberOFCharacters, 16)
        numchars = max(numchars, 1)
        
        self.numberOFCharacters = numchars
        self.useLetters = useLetters
        self.useNumber = useNumber
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialLetters = useSpecialLetters
        
    }
    
    func generate(total: Int) -> [String] {
        
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters {
            universe += letters
        }
        
        if useNumber {
            universe += number
        }
        
        if useSpecialLetters {
            universe += specialCharacters
        }
        
        if useCapitalLetters {
            universe += letters.uppercased()
        }
        
        let universeArray = Array(universe)
        
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOFCharacters {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
            
        }
        
        
        return passwords
        
        
    }
    
    
    
}

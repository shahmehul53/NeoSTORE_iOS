//
//  Validation.swift
//  NeoSTORE_Mehul
//
//  Created by webwerks on 28/04/20.
//  Copyright © 2020 webwerks. All rights reserved.
//

import Foundation
class Validation
{
    static func isValidateEmail(testStr:String) -> Bool
    {
        let emailReg = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailReg)
        return emailTest.evaluate(with:testStr)
    }
    
    
   static func isPasswordValid(password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    static func isPhoneNumberValid(phoneNumber: String) -> Bool {
        let phoneNumber = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneNumber)
        let result =  phoneTest.evaluate(with: phoneNumber)
        return result
    }
}

//
//  RegisterModel.swift
//  NeoSTORE_Mehul
//
//  Created by webwerks on 28/04/20.
//  Copyright © 2020 webwerks. All rights reserved.
//

import Foundation
class Register : Codable
{
    var status: Int
    var message: String
    var user_msg: String
    var first_name :String
    var last_name :String
    var email:String
    var password:String
    var confirm_password :String
    var gender:String
    var phone_no:Int
}

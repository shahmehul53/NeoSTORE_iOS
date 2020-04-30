//
//  LoginModel.swift
//  NeoSTORE_Mehul
//
//  Created by webwerks on 28/04/20.
//  Copyright © 2020 webwerks. All rights reserved.
//

import Foundation
struct login : Codable {
    let status : Int?
    let data : loginModel?
    let message :String?
    let user_msg:String?
}

struct loginModel :Codable{
    let id : Int?
    let role_id : Int?
    let first_name :String?
    let last_name :String?
    let email :String?
    let username:String?
    //let profile_pic:null
    //let country_id: null
    let gender :String?
    let phone_no :String?
    //let dob :null
    let is_active: Bool
    let created:String?
    let modified:String?
    let access_token:String?
    }

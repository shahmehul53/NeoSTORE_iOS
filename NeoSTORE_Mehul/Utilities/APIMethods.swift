//
//  APIMethods.swift
//  NeoSTORE_Mehul
//
//  Created by webwerks on 28/04/20.
//  Copyright © 2020 webwerks. All rights reserved.
//

import Foundation
import UIKit

class APIMethod{
    
    
    static func getMethod(inputParameters:String,webService:String,controller:UIViewController,completionHandler:@escaping (Any?,Error?) -> ()){
        
       let baseURL = APIServiceKeys.URL.appending(webService)
        let url = URL(string: "\(baseURL)?\(inputParameters)")
        
        var request = URLRequest(url: url!)
//        request.httpBody = inputParameters.data(using: .utf8)
        request.httpMethod = "GET"
        
       let userToken = UserDefaults.standard.value(forKey: "accToken") as? String
        request.setValue("5cf68148095f4", forHTTPHeaderField: "access_token")
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No Data")
                return
            }
//            do {
//                let responseJSON = try JSONSerialization.jsonObject(with: data, options: [])
//                print(responseJSON)
                completionHandler(data,nil)
            //}
//            catch let jsonError{
//                print(jsonError)
//                completionHandler(nil,jsonError)
//            }
        }
        task.resume()
        
    }
    
    static func postMethod(inputParameters:String,webService:String,controller:UIViewController,completionHandler:@escaping (Any?,Error?) -> ()){
        print("\ninput para :\(inputParameters)******\n")
        let url = URL(string:APIServiceKeys.URL.appending(webService))
        var request = URLRequest(url: url!)

        request.httpBody = inputParameters.data(using: .utf8)
        request.httpMethod = "POST"
        
         let userToken = UserDefaults.standard.value(forKey: "accToken") as? String
        request.setValue("5cf68148095f4", forHTTPHeaderField: "access_token")
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No Data")
                return
            }
            //do {
                //let responseJSON = try JSONSerialization.jsonObject(with: data, options: [])
               // print(responseJSON)
                completionHandler(data,nil)
               // }
//                catch let jsonError{
//                print(jsonError)
//                completionHandler(nil,jsonError)
//            }
        }
        task.resume()
        
        
    }
    
    
    
    
}

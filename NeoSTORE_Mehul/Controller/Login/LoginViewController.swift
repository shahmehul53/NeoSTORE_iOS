//
//  LoginViewController.swift
//  NeoSTORE_Mehul
//
//  Created by webwerks on 28/04/20.
//  Copyright © 2020 webwerks. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    static func loadFromNib() -> LoginViewController {
        return LoginViewController(nibName: "LoginViewController", bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

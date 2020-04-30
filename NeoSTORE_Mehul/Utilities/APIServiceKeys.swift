//
//  APIServiceKeys.swift
//  NeoSTORE_Mehul
//
//  Created by webwerks on 28/04/20.
//  Copyright © 2020 webwerks. All rights reserved.
//

import Foundation
import UIKit


struct APIServiceKeys {
    
    static let URL = "http://staging.php-dev.in:8844/trainingapp/api/"
    static let registerService = "users/register"
    static let loginService = "users/login"
    static let forgotPasswordService = "users/forgot"
    static let resetPasswordService = "users/change"
    static let updateAccountService = "users/update"
    static let fetchAccountService = "users/getUserData"
    static let productListService = "products/getList"
    static let productDetailsService = "products/getDetail"
    static let setProductRatingService =  "products/setRating"
    static let addToCartService = "addToCart"
    static let listCartItemsService = "cart"
    static let deleteCartItemsService = "deleteCart"
    static let editCartItemsService = "editCart"
    static let orderService = "order"
    static let orderListService = "orderList"
    static let orderDetailService = "orderDetail"
    
    
    
}

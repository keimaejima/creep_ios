//
//  EmailLogin.swift
//  creep_ios
//
//  Created by 前島恵 on 2017/01/22.
//  Copyright © 2017年 keimaejima. All rights reserved.
//

import Foundation
import Alamofire

class EmailLoginCO {
    
    static func clickLogin(email: String) {
        Alamofire.request("http://192.168.33.16:3000//api/v1/feed/all").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            print(response.result.value)
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
}

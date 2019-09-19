//
//  Utils.swift
//  CallPhone
//
//  Created by Resembrink Correa Egoavil on 9/18/19.
//  Copyright © 2019 Resembrink Correa Egoavil. All rights reserved.
//

import Foundation

class Utils: NSObject{
    class func call(){
        if let url = NSURL(string: "telf://0180002323"){
            UIApplication.sharedApplication().openURL(url)
        }
        }
    }

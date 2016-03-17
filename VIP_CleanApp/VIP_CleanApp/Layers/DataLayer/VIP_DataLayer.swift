//
//  VIP_DataLayer.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/17/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class VIP_DataLayer: NSObject {

    var dataset:[String] = ["C", "D"]

    
    func fetchedObjects()->[String] {
        
        return dataset
    }
    
    func updateObjectAtIndex(index:Int, data:String) {
        
        dataset[index] = data
    }
    
    class var sharedInstance: VIP_DataLayer {
        struct Static {
            static var instance: VIP_DataLayer?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = VIP_DataLayer()
        }
        
        return Static.instance!
    }
}

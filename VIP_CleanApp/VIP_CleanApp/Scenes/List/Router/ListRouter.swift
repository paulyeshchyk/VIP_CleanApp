//
//  ListRouter.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit
class ListRouter: ListVIP_RouterProtocol {

    func openDetail(index:Int, data: AnyObject) {
        
        DetailConfigurator.configure(index, data:data) { (vc) -> () in
            
            guard let delegate = UIApplication.sharedApplication().delegate as? AppDelegate else {
                return
            }
            
            delegate.findOrCreateNavigationControllerAndPush(vc)
            
        }
        
        
    }
    
}

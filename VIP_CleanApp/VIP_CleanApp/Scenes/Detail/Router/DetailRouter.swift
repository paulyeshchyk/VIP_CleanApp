//
//  DetailRouter.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class DetailRouter {


    func closeDetail() {
        
        guard let delegate = UIApplication.sharedApplication().delegate as? AppDelegate else {
            
            return
        }
        
        guard let nc = delegate.findNavigationController() else {

            return
        }
        nc.popViewControllerAnimated(true)

    }
}

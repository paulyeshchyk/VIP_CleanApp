//
//  DetailVIPProtocols.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import Foundation

protocol DetailVIP_ViewProtocol:VIP_ViewProtocol {
    
    var output:DetailVIP_InteractorProtocol? {get set}
    var router:DetailVIP_RouterProtocol? {get set}
    
    func displayFetchedData(data:AnyObject)
}

protocol DetailVIP_InteractorProtocol:VIP_InteractorProtocol {
    
    var output:DetailVIP_PresenterProtocol? {get set}
}

protocol DetailVIP_PresenterProtocol:VIP_PresenterProtocol {
    
    var output:DetailVIP_ViewProtocol? {get set}
    func presentFetchedData(data:AnyObject)
}

protocol DetailVIP_RouterProtocol:VIP_RouterProtocol {
    
//    func openDetail(data:AnyObject)
}

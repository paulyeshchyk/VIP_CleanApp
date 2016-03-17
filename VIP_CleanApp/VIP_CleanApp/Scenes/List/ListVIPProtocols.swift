//
//  ListVIPProtocols.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import Foundation

protocol ListVIP_ViewProtocol:VIP_ViewProtocol {
    
    var output:ListVIP_InteractorProtocol? {get set}
    var router:ListVIP_RouterProtocol? {get set}
    
    func displayFetchedData(data:AnyObject)
}

protocol ListVIP_InteractorProtocol:VIP_InteractorProtocol {
    
    var output:ListVIP_PresenterProtocol? {get set}
}

protocol ListVIP_PresenterProtocol:VIP_PresenterProtocol {
    
    var output:ListVIP_ViewProtocol? {get set}
    func presentFetchedData(data:AnyObject)
}

protocol ListVIP_RouterProtocol:VIP_RouterProtocol {
    
    func openDetail(index:Int, data:AnyObject)
}

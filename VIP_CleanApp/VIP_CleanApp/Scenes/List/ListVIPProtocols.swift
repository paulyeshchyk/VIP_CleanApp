//
//  ListVIPProtocols.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import Foundation

protocol ListViewOutputProtocol {
    
    func fetchData()
}

protocol ListViewProtocol {
    
    var output:ListViewOutputProtocol? {get set}
    var router:ListViewRouterProtocol? {get set}
    
    func displayFetchedData(data:AnyObject)
}

protocol ListIteractorOutputProtocol {
    
    func presentFetchedData(data:AnyObject)
}

protocol ListInteractorProtocol {
    
    var output:ListIteractorOutputProtocol? {get set}
    func fetchData()
}

protocol ListPresenterProtocol {
    
    var output:ListViewProtocol? {get set}
    func presentFetchedData(data:AnyObject)
}

protocol ListViewRouterProtocol {
    
    func openDetail(index:Int, data:String)
}

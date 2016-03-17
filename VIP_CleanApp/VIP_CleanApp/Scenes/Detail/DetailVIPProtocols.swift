//
//  DetailVIPProtocols.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import Foundation


typealias DetailInteractorUpdateCallback = ()->()

protocol DetailViewInputProtocol {
    
    func updateData(data: String, callback:DetailInteractorUpdateCallback)
}

protocol DetailViewOutputProtocol {
    
    func fetchData()
}

protocol DetailViewRouterProtocol {
    
    func closeDetail()
}

protocol DetailViewProtocol {
    
    var input:DetailViewInputProtocol? {get set}
    var router:DetailViewRouterProtocol? {get set}
    var output: DetailViewOutputProtocol? {get set}
    
    func displayFetchedData(data:String?)
}

protocol DetailInteractorProtocol {
    
    var output:DetailPresenterProtocol? {get set}
    func updateData(data: String, callback:DetailInteractorUpdateCallback)
}

protocol DetailPresenterProtocol {
    
    var output:DetailViewProtocol? {get set}
    func presentFetchedData(data:String?)
}


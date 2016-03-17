//
//  DetailConfigurator.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit


extension DetailViewController:DetailViewProtocol {
    
}

extension DetailInteractor:DetailViewInputProtocol, DetailViewOutputProtocol {
    
}

extension DetailPresenter:DetailPresenterProtocol {
    
}

extension DetailRouter:DetailViewRouterProtocol {
    
}

class DetailConfigurator: NSObject {

    static func configure(index:Int, data:String, callback:ConfiguratorCallback) {
        
        let view = DetailViewController(nibName:"DetailViewController", bundle: NSBundle.mainBundle())
        let interactor = DetailInteractor()
        let router = DetailRouter()
        view.output = interactor
        view.input = interactor
        view.router = router
        
        interactor.index = index
        interactor.data = data
        
        let presenter = DetailPresenter()
        presenter.output = view
        interactor.output = presenter
        
        
        callback(vc: view)
        
    }
}

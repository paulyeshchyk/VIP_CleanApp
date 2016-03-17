//
//  DetailConfigurator.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class DetailConfigurator: NSObject {

    static func configure(index:Int, data:AnyObject?, callback:ConfiguratorCallback) {
        
        let view = DetailViewController(nibName:"DetailViewController", bundle: NSBundle.mainBundle())
        let interactor = DetailInteractor()
        view.output = interactor
        
        interactor.index = index
        interactor.data = data
        
        let presenter = DetailPresenter()
        presenter.output = view
        interactor.output = presenter
        
        let router = DetailRouter()
        view.router = router
        
        callback(vc: view)
        
    }
}

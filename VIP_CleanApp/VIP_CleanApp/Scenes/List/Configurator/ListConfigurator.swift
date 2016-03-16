//
//  ListConfigurator.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

typealias ConfiguratorCallback = (vc:UIViewController) -> ()

class ListConfigurator: NSObject {

    static func configure(callback:ConfiguratorCallback) {
        
        let view = ListViewController(nibName:"ListViewController", bundle:NSBundle.mainBundle())
        let interactor = ListInteractor()
        
        let presenter = ListPresenter()
        let router = ListRouter()
        
        view.router = router
        view.output = interactor
        
        interactor.output = presenter
        
        presenter.output = view
        
        
        callback(vc: view)
    }
    
}

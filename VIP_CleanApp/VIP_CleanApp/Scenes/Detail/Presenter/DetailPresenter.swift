//
//  DetailPresenter.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class DetailPresenter {

    var output:DetailViewProtocol?
    func presentFetchedData(data:String?) {
        
        
        guard let output = self.output else {

            return
        }
        
        
        output.displayFetchedData(data)
    }
}

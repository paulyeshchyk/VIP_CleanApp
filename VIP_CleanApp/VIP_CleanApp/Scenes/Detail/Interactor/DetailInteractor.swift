//
//  DetailInteractor.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class DetailInteractor: DetailVIP_InteractorProtocol {

    var output:DetailVIP_PresenterProtocol?
    var data:AnyObject?

    func fetchData() {
        
        guard let output = self.output else {
            
            return
        }
        
        guard let data = self.data else {

            return
        }
        
        output.presentFetchedData(data)
    }
}

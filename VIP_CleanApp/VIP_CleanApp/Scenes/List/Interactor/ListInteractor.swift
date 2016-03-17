//
//  ListInteractor.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class ListInteractor: ListInteractorProtocol {

    var output:ListIteractorOutputProtocol?
    
    func fetchData() {
        
        guard let output = self.output else {
            return
        }
        
        let dataset = VIP_DataLayer.sharedInstance.fetchedObjects()
        
        output.presentFetchedData(dataset)
    }
    
}

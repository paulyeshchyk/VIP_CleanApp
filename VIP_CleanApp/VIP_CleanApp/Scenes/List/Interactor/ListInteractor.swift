//
//  ListInteractor.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class ListInteractor: ListVIP_InteractorProtocol {

    var output:ListVIP_PresenterProtocol?
 
    
    func fetchData() {
        
        guard let output = self.output else {
            return
        }
        
        let data = ["C","D"]
        output.presentFetchedData(data)
    }
}

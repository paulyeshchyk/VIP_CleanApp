//
//  DetailInteractor.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit


class DetailInteractor: DetailInteractorProtocol {

    var output:DetailPresenterProtocol?
    var data:String?
    var index:Int?

    func fetchData() {
        
        guard let output = self.output else {
            
            return
        }
        
        output.presentFetchedData(self.data)
    }
    
    func updateData(data: String, callback:DetailInteractorUpdateCallback) {
        
        VIP_DataLayer.sharedInstance.updateObjectAtIndex(self.index!, data: data)
        callback()
    }
}

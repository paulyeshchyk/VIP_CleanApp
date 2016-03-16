//
//  ListPresenter.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class ListPresenter: ListVIP_PresenterProtocol {

    var output:ListVIP_ViewProtocol?
    
    func presentFetchedData(data: AnyObject) {

        guard let output = self.output else {

            return
        }
        output.displayFetchedData(data)
    }
}

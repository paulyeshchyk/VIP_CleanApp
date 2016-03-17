//
//  DetailViewController.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    var input:DetailViewInputProtocol?
    var router:DetailViewRouterProtocol?
    var output:DetailViewOutputProtocol?
    
    @IBOutlet var textField:UITextField?
    
    func displayFetchedData(data:String?) {
        
        self.textField?.text = data 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let output = self.output else {
            
            return
        }

        output.fetchData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: - UITextFieldDelegate
    func textFieldDidEndEditing(textField: UITextField) {
     
        guard let input = self.input else {
            
            return
        }
        
        input.updateData(textField.text ?? "", callback: {() in
            
            self.router?.closeDetail()
        })
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        return true
    }
    

}

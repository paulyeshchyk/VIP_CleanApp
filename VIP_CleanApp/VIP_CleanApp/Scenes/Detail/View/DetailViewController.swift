//
//  DetailViewController.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, DetailVIP_ViewProtocol, UITextFieldDelegate {

    var output:DetailVIP_InteractorProtocol?
    var router:DetailVIP_RouterProtocol?
    @IBOutlet var textField:UITextField?
    
    func displayFetchedData(data:AnyObject) {
        
        self.textField?.text = data as? String
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
     
        output?.updateData(textField.text ?? "")
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        textField.resignFirstResponder()
        return true
    }
    

}

//
//  ListViewController.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, ListVIP_ViewProtocol, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView:UITableView?
    
    var dataToDisplay:[String]?
    var output:ListVIP_InteractorProtocol?
    var router:ListVIP_RouterProtocol?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.tableView?.registerNib(UINib(nibName: "ListViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ListViewCell")

        self.output?.fetchData()
    }
    
    
    func displayFetchedData(data: AnyObject) {
        
        self.dataToDisplay = data as? [String]
        self.tableView?.reloadData()
    }

    
    //MARK: UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        guard let dataToDisplay = self.dataToDisplay else {

            return 0
        }
        return dataToDisplay.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        guard let result = tableView.dequeueReusableCellWithIdentifier("ListViewCell") as? ListViewCell else {
            
            return UITableViewCell(style: .Default, reuseIdentifier: "ListViewCell")
        }
        
        result.textLabel?.text = self.dataToDisplay![indexPath.row]
        return result
        
    }
    
    //MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        self.router?.openDetail(self.dataToDisplay![indexPath.row])
    }
}

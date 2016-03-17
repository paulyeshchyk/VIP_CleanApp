//
//  ListViewController.swift
//  VIP_CleanApp
//
//  Created by Pavel Yeshchyk on 3/16/16.
//  Copyright © 2016 NoName. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView:UITableView?
    
    var dataToDisplay:[String]?
    var output:ListViewOutputProtocol?
    var router:ListViewRouterProtocol?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        self.tableView?.registerNib(UINib(nibName: "ListViewCell", bundle: NSBundle.mainBundle()), forCellReuseIdentifier: "ListViewCell")
    }

    override func viewDidAppear(animated: Bool) {

        super.viewDidAppear(animated)
        
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
        self.router?.openDetail(indexPath.row, data:self.dataToDisplay![indexPath.row])
    }
}

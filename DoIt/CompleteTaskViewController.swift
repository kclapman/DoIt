//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Kyle Clapman on 10/26/16.
//  Copyright © 2016 Kyle Clapman. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet weak var taskLabel: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }
    }

    @IBAction func completeTapped(sender: AnyObject) {
        previousVC.tasks.removeAtIndex(previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewControllerAnimated(true)
    }
    

}

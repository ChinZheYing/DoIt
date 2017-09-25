 //
//  CreatTaskViewController.swift
//  DoIt
//
//  Created by Chin Zhe Ying on Sep/25/17.
//  Copyright © 2017 Chin Zhe Ying. All rights reserved.
//

import UIKit

class CreatTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        //Create a task from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add a new task to array in previous view controller
        previousVC.tasks.append(task)
    }

    

}

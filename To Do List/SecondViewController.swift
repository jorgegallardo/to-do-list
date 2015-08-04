//
//  SecondViewController.swift
//  To Do List
//
//  Created by Jorge Gallardo on 8/3/15.
//  Copyright © 2015 Jorge Gallardo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var item: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(item.text!)
        item.text = "" // clear text field to add more items
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true) // allows user to tap outside of the keyboard and close it down
    }
    
    /* ***************** DOES NOT SEEM TO WORK ***************** */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        item.resignFirstResponder() // allows user to press return and exit the keyboard
        return true
    }

}
//
//  ViewController.swift
//  This is It
//
//  Created by Marcus Dunlap on 1/12/15.
//  Copyright (c) 2015 Marcus Dunlap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var sendCom: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendCom(sender: AnyObject) {
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.grayColor()
        
        enterMessageTextField.resignFirstResponder()
        enterMessageTextField.text = ""
        
        sendCom.setTitle("Com Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.grayColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
    }

}


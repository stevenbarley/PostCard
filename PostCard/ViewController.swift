//
//  ViewController.swift
//  Post Card
//
//  Created by Steven Barley on 9/28/14.
//  Copyright (c) 2014 Steven Barley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        
        messageLabel.hidden = false
        nameLabel.hidden = false

        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}


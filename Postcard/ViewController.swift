//
//  ViewController.swift
//  Postcard
//
//  Created by PERRLA (Graysen Pack) on 9/25/14.
//  Copyright (c) 2014 Hero Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton){
        //Code will evaluate when we press the button.
        messageLabel.hidden = false
        nameLabel.hidden = false
        loveLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.orangeColor()
        nameLabel.textColor = UIColor.blueColor()
        loveLabel.textColor = UIColor.redColor()
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


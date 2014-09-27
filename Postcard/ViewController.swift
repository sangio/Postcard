//
//  ViewController.swift
//  Postcard
//
//  Created by Luca Sangiorgi on 21/09/14.
//  Copyright (c) 2014 Luca Sangiorgi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    var clicked = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        clicked = false
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluete when we press the button
        clicked = !clicked
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.resignFirstResponder()
        if clicked {
            messageLabel.hidden=true
        }
        else {
            messageLabel.hidden=false
        }
        
        
    }
}


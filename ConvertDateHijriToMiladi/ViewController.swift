//
//  ViewController.swift
//  ConvertDateHijriToMiladi
//
//  Created by mac on 27/08/2016.
//  Copyright © 2016 Rachidovitch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var miladiTextField: UITextField!
    
    @IBOutlet weak var hijriLabel: UILabel!
    
    @IBOutlet weak var attention: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hijriLabel.text = ""
    }
    
    
    @IBAction func convertButtonTapped(sender: AnyObject) {
        
        if miladiTextField.text != nil && miladiTextField.text != ""{
        let constant : Double  = ( 33 / 32)
        
        var hijri = Double(miladiTextField.text!)! - 622.0
        
        
        hijri *= constant
        
        hijriLabel.text = "\(hijri)"
        
        miladiTextField.resignFirstResponder()
        
            attention.hidden = true
        }
        else {
            attention.hidden = false
        }
        
        
    }


}


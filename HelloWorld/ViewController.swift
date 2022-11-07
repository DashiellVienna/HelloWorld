//
//  ViewController.swift
//  HelloWorld
//
//  Created by Andrei Deshin on 07.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.isHidden = true
        greetingButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func greetingButtonTapped() {
        //print("Button is tapped")
        greetingLabel.isHidden.toggle()
        
        //        if greetingLabel.isHidden {
        //            greetingButton.setTitle("Show Greeting", for: .normal)
        //        }else {
        //            greetingButton.setTitle("Hide Greeting", for: .normal)
        //        }
        //    }
        
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
    }
}

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
       // greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
        // размер кнопки через frame
        //greetingButton.frame(ширина высота)
    }
    
    @IBAction func greetingButtonTapped() {
        //print("Button is tapped")
        greetingLabel.isHidden.toggle()
        // 1 option
        //        if greetingLabel.isHidden {
        //            greetingButton.setTitle("Show Greeting", for: .normal)
        //        }else {
        //            greetingButton.setTitle("Hide Greeting", for: .normal)
        //        }
        //    }
        
        // 2 option
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
//            for: .normal
//        )
        
        // 3 option
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
        
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        // buttonConfiguration.baseBackgroundColor = UIColor.red     or for custom color #colorLiteral(  !!!!!
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0, green: 0.617862165, blue: 0.8836789131, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        // custom font
        // buttonConfiguration.attributedTitle?.font = .
        
        return buttonConfiguration
    }
}

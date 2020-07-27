//
//  WelcomeViewController.swift
//  Ali Chat
//
//  Created by Ali Ahmadian shalchi on 22/07/2020.
//  Copyright © 2020 Ali Ahmadian shalchi. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitle()
        
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
        registerButton.layer.cornerRadius = registerButton.frame.size.height/2
        
    }
    
    
    func setupTitle(){
        mainLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (Timer) in
                self.mainLabel.text?.append(letter)
            }
            charIndex += 1
        }

    }


}

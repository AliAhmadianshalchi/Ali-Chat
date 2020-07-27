//
//  RegisterViewController.swift
//  Ali Chat
//
//  Created by Ali Ahmadian shalchi on 22/07/2020.
//  Copyright © 2020 Ali Ahmadian shalchi. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text , let password = passwordTextField.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print(error.localizedDescription)
                    self.showErrorAlert(message: error.localizedDescription)
                } else {
                    print("successfully Registered!")
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
            
        }
        
        
    }
    
    func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")

              case .cancel:
                    print("cancel")

              case .destructive:
                    print("destructive")


              @unknown default:
                print(Error.self)
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
    

}

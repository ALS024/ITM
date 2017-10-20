//
//  ViewController.swift
//  ITM
//
//  Created by Rolman De los Santos on 10/19/17.
//  Copyright © 2017 Rolman De los Santos. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func createAccount(_ sender: Any) {
        if let email = emailTextField.text, let password =
            passwordTextField.text{
            
            Auth.auth().createUser(withEmail: email, password:password, completion:{user, error in
                if let firebaseError = error{
                    print(firebaseError.localizedDescription)
                }
                print("success!")
            })
        }
        
    }
    @IBAction func loginTapped(_ sender: Any) {
        if let email = emailTextField.text, let password =
            passwordTextField.text{
            
            Auth.auth().createUser(withEmail: email, password:password, completion:{user, error in
                if let firebaseError = error{
                    print(firebaseError.localizedDescription)
                }
                print("success!")
            })
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



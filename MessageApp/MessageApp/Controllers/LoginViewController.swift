//
//  LoginViewController.swift
//  MessageApp
//
//  Created by Marcylene Barreto on 16/12/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
    }
    @IBAction func loginButton(_ sender: UIButton) {
        if let email = txtEmail.text, let password = txtPassword.text {
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, err) in
                if let error = err {
                    print("Error Register user \(error)")
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
}

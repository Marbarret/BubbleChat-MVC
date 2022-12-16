//
//  RegisterViewController.swift
//  MessageApp
//
//  Created by Marcylene Barreto on 16/12/22.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Register"
        // Do any additional setup after loading the view.
    }
    @IBAction func registerButton(_ sender: UIButton) {
        if let email = txtEmail.text, let password = txtPassword.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, err) in
                if let error = err {
                    print("Error Register user \(error)")
                } else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
            
    }
    
}

//
//  SignInViewController.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, SignInView {
    var presenter: SignInModuleInterface?
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var identifierLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // MARK: - Error Message
    func showError(message: String) {
      let alert = UIAlertView(title: "Error", message: message, delegate: nil, cancelButtonTitle: "Ok")
      alert.show()
    }
    
    //MARK: - Show Identifier 
    func showIdentifier(text: String) {
        identifierLabel.text = text
    }
    
    //MARK: - Button Actions
    @IBAction func signInButton(_ sender: Any) {
        presenter?.signInButton(username: usernameTextField.text!, password: passwordTextField.text!)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        //show to signUpView
        presenter?.signUpButton()
    }
    
    
    
}


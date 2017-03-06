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
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    

    //MARK: - SignInView
    func showLabel(withText text: String) {
        label.text = text
    }
    
    func showUserInfo(user: User) {
        nameLabel.text = user.name
        label.text = user.email
    }
    
    //MARK: - Button Actions
    @IBAction func buttonLoginOnClick() {
        presenter?.buttonLoginDidClicked(email: "lalala", password: "lalala")
    }
}


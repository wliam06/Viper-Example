//
//  SignInWireframe.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit


class SignInWireframe {
    let signInVC: SignInViewController
    
    var signUpWireframe: SignUpWireframe?
    var welcomeWireframe: WelcomeWireframe?
    
    init() {
        signInVC = SignInViewController()
        
        let presenter = SignInPresenter(wireframe: self, view: signInVC)
        let interactor = SignInInteractor(output: presenter)
        
        presenter.interactor = interactor
        
        signInVC.presenter = presenter
    }
    
    func pushToSignUpView() {
        signUpWireframe = SignUpWireframe()
        signUpWireframe?.pushToSignUpViewController(withNavController: signInVC.navigationController!)
    }
    
    func pushToWelcomeView() {
        welcomeWireframe = WelcomeWireframe()
        welcomeWireframe?.pushToWelcomeViewController(withNavController: signInVC.navigationController!)
    }
}

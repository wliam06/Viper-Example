//
//  SignUpWireframe.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/6/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import UIKit

class SignUpWireframe{
    let signUpVC: SignUpViewController
    
    init() {
        signUpVC = SignUpViewController()
        
        let presenter = SignUpPresenter(wireframe: self, view: signUpVC)
        let interactor = SignUpInteractor(output: presenter)
        
        presenter.interactor = interactor
        
        signUpVC.presenter = presenter
    
    }

    func pushToSignUpViewController(withNavController navVC: UINavigationController) {
        navVC.pushViewController(signUpVC, animated: true)
    }
    
    func popSignUpView() {
        _ = signUpVC.navigationController?.popViewController(animated: true)
    }
    
}

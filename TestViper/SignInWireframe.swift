//
//  SignInWireframe.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import Foundation

class SignInWireframe {
    let signInVC: SignInViewController
    
    init() {
        signInVC = SignInViewController()
        
        let presenter = SignInPresenter(wireframe: self, view: signInVC)
        let interactor = SignInInteractor(output: presenter)
        
        presenter.interactor = interactor
        
        signInVC.presenter = presenter
    }
}

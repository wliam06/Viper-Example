//
//  SignInPresenter.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

class SignInPresenter: SignInModuleInterface, SignInInteractorOutput {
    unowned let wireframe: SignInWireframe
    unowned let view: SignInView
    
    var interactor: SignInInteractorInput?
    
    init(wireframe: SignInWireframe,
         view: SignInView) {
        self.wireframe = wireframe
        self.view = view
    }
    
    //MARK: - Module Interface
    func buttonLoginDidClicked(email: String, password: String) {
        interactor?.signIn(withEmail: email, password: password)
    }
    
    //MARK: - Output
    func foundUser(user: User?) {
        if let _ = user {
            wireframe.pushToSignUpView()
        } else {
            view.showLabel(withText: "User not found.")
        }
    }
}

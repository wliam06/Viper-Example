//
//  SignInPresenter.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.



class SignInPresenter: SignInModuleInterface, SignInInteractorOutput {
    unowned let wireframe: SignInWireframe
    unowned let view: SignInView
    
    var user: [User]?
    
    var interactor: SignInInteractorInput?
    
    init(wireframe: SignInWireframe,
         view: SignInView) {
        self.wireframe = wireframe
        self.view = view
    }
    
    //MARK: - Module Interface
    func signInButton(username: String, password: String) {
        interactor?.signIn(username: username, password: password)
    }
    
    func signUpButton() {
        wireframe.pushToSignUpView()
    }
    
    //MARK: - Output
    func foundUser (user: User) {
        debugPrint("USER SIGN IN SUCCESS")
    }
    
    func foundError(message: String) {
        view.showError(message: message)
    }
    
    func showIdentifier(text: String) {
        view.showIdentifier(text: text)
    }
}

//
//  SignInInteractor.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//


class SignInInteractor: SignInInteractorInput {
    
    unowned let output: SignInInteractorOutput
    
    init(output: SignInInteractorOutput) {
        self.output = output
    }
    
    
    //MARK: - Input
    func signIn(withEmail email: String, password: String) {
        if email == password {
            
            let user = User(email: email, name: "William", password: password)
            
            self.output.foundUser(user: user)
        } else {
            self.output.foundUser(user: nil)
        }
    }
}

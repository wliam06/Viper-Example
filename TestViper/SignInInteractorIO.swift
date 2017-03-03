//
//  SignInInteractorIO.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

protocol SignInInteractorInput: class {
    func signIn(withEmail email: String, password: String)
}

protocol SignInInteractorOutput: class {
    func foundUser(user: User?)
}

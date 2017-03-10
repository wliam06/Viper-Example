//
//  SignInInteractorIO.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

protocol SignInInteractorInput: class {
    func signIn(username: String, password: String)
}

protocol SignInInteractorOutput: class {
    func foundUser (user: User)
    func foundError (message: String)
    func showIdentifier (text: String)
}

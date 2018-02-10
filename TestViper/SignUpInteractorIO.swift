//
//  SignUpInteractorIO.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/6/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

protocol SignUpInteractorInput: class {
    func signUp(withUsername username: String?, password: String?)
}


protocol SignUpInteractorOutput: class {
    func foundError(withMessage message: String)
    func successSignUpUser()
}

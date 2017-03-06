//
//  SignUpInteractor.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/6/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import Foundation


class SignUpInteractor: SignUpInteractorInput {
    var output: SignUpInteractorOutput
    
    init(output: SignUpInteractorOutput) {
        self.output = output
    }
    
    //MARK: - Input
    func signUp(withUsername username: String?, password: String?) {
        // Make sure username is not the same with password
        if username == password {
            // Output show alert message same username and password
            output.foundError(withMessage: "Same username and password")
        }
    }
}

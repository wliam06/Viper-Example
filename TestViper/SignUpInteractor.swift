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
    
    var user: [User]?
    
    //MARK: - Input
    func signUp(withUsername username: String?, password: String?) {
        // Make sure username is not the same with password
        
        if (username?.isEmpty)!{
            output.foundError(withMessage: "Username must be filled")
        }else if (password?.isEmpty)!{
            output.foundError(withMessage: "Password must be filled")
        }else if username == password {
            // Output show alert message same username and password
            output.foundError(withMessage: "Same username and password")
        }else {
            let helper = DBHelper()
            helper.insertUser(username: username!, password: password!)
            
            self.output.successSignUpUser()
        }
    }
}

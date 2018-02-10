//
//  SignInInteractor.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import Foundation

class SignInInteractor: SignInInteractorInput {
    
    unowned let output: SignInInteractorOutput
    
    init(output: SignInInteractorOutput) {
        self.output = output
    }
    
    var signedUpUser: User?

    func signIn(username: String, password: String) {
        
        if username.isEmpty {
            output.foundError(message: "Username is empty")
        }else if password.isEmpty {
            output.foundError(message: "Password is empty")
        }else if username == password {
            output.foundError(message: "Username and Password is same")
        }
        else {
            
            let helper = DBHelper()
            if let userInDB = helper.fetchUser(username: username, password: password) {
                debugPrint("USER FOUND")
                output.showIdentifier(text: "Success")
                output.successSignInUser()
            } else {
                debugPrint("USER NOT FOUND")
                output.showIdentifier(text: "Failed")
            }
            
            
            
//            if user.name != username {
//                self.output.foundError(message: "Username is not registered")
//            }else if user.password != password {
//                self.output.foundError(message: "Password is not match")
//            }else if user.name == username && user.password == password {
//                self.output.showIdentifier(text: "Success")
//                self.output.foundUser(user: user)
//            }
        }
    }
}

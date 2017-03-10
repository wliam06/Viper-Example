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
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.assignSignUpUser(notification:)),
                                               name: NSNotification.Name("didSignUp"),
                                               object: nil)
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
            
            guard let user = signedUpUser else { return }
            
            if user.name != username {
                self.output.foundError(message: "Username is not registered")
            }else if user.password != password {
                self.output.foundError(message: "Password is not match")
            }else if user.name == username && user.password == password {
                self.output.showIdentifier(text: "Success")
                self.output.foundUser(user: user)
            }
        }
    }

    @objc func assignSignUpUser(notification: Notification) {
        if let user = notification.object as? User {
            self.signedUpUser = user
        }
    }
    
}

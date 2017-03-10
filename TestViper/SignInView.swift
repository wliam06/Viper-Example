//
//  SignInView.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

protocol SignInView: class {    
    func showError(message: String)
    
    func showIdentifier (text: String)
}

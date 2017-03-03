//
//  User.swift
//  TestViper
//
//  Created by Hendy Christianto on 3/3/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

struct User {
    var email = ""
    var name = ""
    var password = ""
    
    init(email: String, name: String, password: String) {
        self.email = email
        self.name = name
        self.password = password
    }
}

//
//  DBHelper.swift
//  TestViper
//
//  Created by william on 3/13/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import MagicalRecord

class DBHelper {
    
    func fetchUser(username: String, password: String) -> User? {
        let predicate = NSPredicate(format: "username = %@ AND password = %@", username, password)
        
        return User.mr_findFirst(with: predicate)
    }
    
    func updateUser(user: User, withUsername username: String, andPassword password: String) {
        MagicalRecord.save ({ (localContext: NSManagedObjectContext) in
            user.username = username
            user.password = password
        })
    }
    
    func insertUser(username: String, password: String){
        MagicalRecord.save({ (localContext: NSManagedObjectContext) in
            let user = User.mr_createEntity(in: localContext)
            user?.username = username
            user?.password = password
        })
        
//        let context = NSManagedObjectContext.mr_default()
//        let user = User.mr_createEntity(in: context)
//        user?.username = username
//        user?.password = password
//        
//        context.mr_save(options: .synchronously, completion: nil)
    }
}

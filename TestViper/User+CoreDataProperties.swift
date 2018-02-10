//
//  User+CoreDataProperties.swift
//  TestViper
//
//  Created by william on 3/14/17.
//  Copyright © 2017 PT. Kurio. All rights reserved.
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User");
    }

    @NSManaged public var password: String
    @NSManaged public var username: String

}

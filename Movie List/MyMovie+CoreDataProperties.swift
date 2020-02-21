//
//  MyMovie+CoreDataProperties.swift
//  Movie List
//
//  Created by Lydia Zhang on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//
//

import Foundation
import CoreData


extension MyMovie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyMovie> {
        return NSFetchRequest<MyMovie>(entityName: "MyMovie")
    }

    @NSManaged public var name: NSObject?

}

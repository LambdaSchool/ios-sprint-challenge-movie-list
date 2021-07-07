//
//  Movie.swift
//  Movie List
//
//  Created by Jordan Christensen on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie: NSObject, NSCoding {
    var name: String
    var hasSeen: Bool = false
    init(name: String, hasSeen: Bool) {
        self.name = name
        self.hasSeen = hasSeen
    }
    required convenience init(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        let hasSeen = aDecoder.decodeObject(forKey: "hasSeen")  as? Bool ?? false
        self.init(
            name: name,
            hasSeen: hasSeen
        )
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(hasSeen, forKey: "hasSeen")
    }
}

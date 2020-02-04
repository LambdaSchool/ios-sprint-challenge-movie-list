//
//  Movie.swift
//  OneMoreTime
//
//  Created by Lambda_School_Loaner_268 on 2/3/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import Foundation


enum Seen {
    case Seen
    case notSeen
}

enum SeenString: String {
    case seen = "Seen"
    case notSeen = "Not Seen"
}

struct Movie {
    var title: String
    var seen: Seen
    init(title: String, seen: Seen = .notSeen) {
        self.title = title
        self.seen = seen
        
    }
}

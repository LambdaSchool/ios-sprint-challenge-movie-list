//
//  Movie .swift
//  Movie List
//
//  Created by Lambda_School_Loaner_141 on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    let name: String
    var seen: Bool = false
    
    init(name: String) {
        self.name = name
    }
}

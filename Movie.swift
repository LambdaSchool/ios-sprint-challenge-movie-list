//
//  Movie.swift
//  Movie List
//
//  Created by Anesa Krnic on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

 struct Movie: Equatable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
   
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.name == rhs.name
    }
    
}


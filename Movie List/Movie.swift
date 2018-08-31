//
//  Movie.swift
//  Movie List
//
//  Created by Dillon McElhinney on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    
    // MARK - Properties
    var title: String
    var isSeen = false

    // MARK: - Initializers
    //Normal Initializer
    init (title: String) {
        self.title = title
    }
    
    //Initializer for instantiating sample movies without default is seen property
    init (title: String, isSeen: Bool) {
        self.title = title
        self.isSeen = isSeen
    }
}



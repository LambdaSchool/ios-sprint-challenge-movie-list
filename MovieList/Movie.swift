//
//  Movie.swift
//  MovieList
//
//  Created by Bradley Yin on 7/19/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import Foundation
import RealmSwift
class Movie : Object{
    @objc dynamic var name : String = ""
    
    @objc dynamic var haveSeen : Bool = false
}

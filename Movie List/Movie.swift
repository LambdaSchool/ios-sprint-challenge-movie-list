//
//  MovieInfo.swift
//  Movie List
//
//  Created by Cameron Dunn on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie : Encodable, Decodable{
    var name : String = ""
    var isSeen : Bool = false
    var timeAdded : Date = Date()
}

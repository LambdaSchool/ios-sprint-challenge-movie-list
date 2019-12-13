//
//  Movie.swift
//  Movie List
//
//  Created by Kenny on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

//A Movie model object that has properties for:
//The movie's name as a String
//Whether it has been seen or not as a Bool. You can set a default value for this property to false if you want


struct Movie {
    let name: String?
    var didWatch: Bool = false
    var isSet: Bool = false
}

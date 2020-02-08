//
//  movies.swift
//  Movie List
//
//  Created by Jarren Campos on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import UIKit


var movies: [MyMovie] = [
 MyMovie(title: "Star Wars", seen: true),
 MyMovie(title: "1917", seen: false)]

struct MyMovie {
    let title: String
    var seen: Bool
    
}


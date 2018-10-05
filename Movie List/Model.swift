//
//  Model.swift
//  Movie List
//
//  Created by Yvette Zhukovsky on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class Model:NSObject {
    static let shared = Model()
    // private init() {}
    var items: [Movies] = []
}


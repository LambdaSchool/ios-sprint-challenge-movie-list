//
//  MoviePresenter.swift
//  Sprint1
//
//  Created by Victor  on 4/26/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

//making sure view controllers have the controller
protocol MoviePresenter: AnyObject {
    var movieController: MovieController? {set get}
}

//
//  MovieController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_218 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movie: [Movies] = []
    
   
    
    func hasSeen(seen: Movies) {
        guard let movieIndex = movie.firstIndex(of: seen) else { return }
        movie[movieIndex].isSeen.toggle()
    }
}

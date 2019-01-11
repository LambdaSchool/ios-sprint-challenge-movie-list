//
//  MovieViewModel.swift
//  Movie List
//
//  Created by Nelson Gonzalez on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieViewModel {
    
    static let shared = MovieViewModel()
    private init() {}
    var list = [Movie]()
    var items: [String] = []
    var seen = true
    
    
    
    func addMovie(_ title: String ){
        let movie = Movie(title: title)
        items.append(movie.title)
     
    }
    
    func itemCount() -> Int {
      //  print("*****", items.count)
        return items.count
    }
    
    func removeMoview(at index: Int) {
        // fill this in
        items.remove(at: index)
    }
   
}

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
        return items.count
    }
    
    func removeMoview(at index: Int) {
       
        items.remove(at: index)
    }
    
    func moveItem(from index: Int, to destinationIndex: Int, stringValue: String) {
        
        items.remove(at: index)
        items.insert(stringValue, at: destinationIndex)
    }
   
}

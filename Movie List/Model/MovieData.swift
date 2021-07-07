//
//  MovieData.swift
//  Movie List
//
//  Created by Sameera Roussi on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieData {
    
    static let shared = MovieData()
    private init() {}
    
    private(set) var moviesList: [String] = []
    
    //Report number of rows
    func titleCount() -> Int {
        return moviesList.count
    }
    
    func addMovie(_ movie: String) {
        moviesList.append(movie)
        saveData()
    }
    
    func itemTitle(at index: Int) -> String {
        return moviesList[index]
    }
    
    //cruD
    func removeMovie (at index: Int) {
        moviesList.remove(at: index)
        saveData()
    }
    
    func moveMovie(from index: Int, to newIndex: Int) {
        let movie = moviesList.remove(at: index)
        moviesList.insert(movie, at: newIndex)
        saveData()
    }
    
    func resetMovieList() {
        moviesList = []
        saveData()
    }
    
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("Movies")
        .appendingPathExtension(".pList")
    
    func saveData() {
        try!(moviesList as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let items = NSArray(contentsOf: fileURL) as? [String] {
            moviesList = items
        }
    }

    
}



//
//  Model.swift
//  Movie List
//

import Foundation

class Model {
    
    // create an instance of the class Model
    static let shared = Model()
    
    // make it a private instance of the Model so others can't make it
    private init() {}
    
    // private array that will hold the items entered by the user
    private var movies: [String] = []
    
    // MARK: - CRUD Methods
    // add movie to movies array
    func addMovie(_ movie: String) {
        movies.append(movie)
        saveData()
    }
    
    // remove movie from array
    func removeMovie(at index: Int) {
        movies.remove(at: index)
        saveData()
    }
    
    // move movies around in the array
    func moveMovie(from index: Int, to destinationIndex: Int) {
        // first remove and return the movie
        let movie = movies.remove(at: index)
        
        // then insert movie into new index
        movies.insert(movie, at: destinationIndex)
        saveData()
    }
    
    // count and return the number of movies in the array
    func movieCount() -> Int {
        return movies.count
    }
    
    // return the name of the movie that belongs to the index entered
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
    
    // saving location - creates the URL
    let fileURL = URL(fileURLWithPath: NSHomeDirectory())
        .appendingPathComponent("Library")
        .appendingPathComponent("ToDo")
        .appendingPathExtension("plist")
    
    // save and load functions from storage location
    func saveData() {
        try! (movies as NSArray).write(to: fileURL)
    }
    
    func loadData() {
        if let movies = NSArray(contentsOf: fileURL) as? [String] {
            self.movies = movies
        }
    }
    
    //func savePreviousData() {
        //let defaults = UserDefaults.standard
        //defaults.set(movies, forKey: "movieList")
        //let myMovieList = defaults.string(forKey: "movieList")
    //}
    
}

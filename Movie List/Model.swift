//
//  Model.swift
//  Movie List
//
//  Created by Cameron Dunn on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation



class Model {
    var movieArray : [Movie] = []
    var serializedArray : Data = Data()
    let tableViewController = CustomTableViewController()
    static let shared = Model()
    func addMovie(movieToAdd : Movie){
        movieArray.append(movieToAdd)
        saveMovies()
    }
    func loadMovies(){
        serializedArray = UserDefaults.standard.object(forKey: "MoviesSave") as! Data
        do{
            movieArray = try JSONDecoder().decode([Movie].self, from: serializedArray)
        }catch{
            print(error)
        }
        sortRecentMovies()
    }
    func sortRecentMovies(){
        movieArray = movieArray.sorted(by: {$0.timeAdded > $1.timeAdded})
    }
    func saveMovies(){
        do{
            serializedArray = try JSONEncoder().encode(movieArray)
            UserDefaults.standard.set(serializedArray, forKey: "MoviesSave")
        }catch{
            print(error)
        }
    }
    func deleteMovie(indexPath: Int){
        movieArray.remove(at: indexPath)
        saveMovies()
    }
    func moveMovie(from : Int, to: Int){
        let movieHolder = movieArray[to]
        movieArray[to] = movieArray[from]
        movieArray[from] = movieHolder
        saveMovies()
    }
}

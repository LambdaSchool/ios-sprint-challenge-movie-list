//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerDelegate {
   
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieTextInput: UITextField!
    weak var delegate: MovieControllerDelegate?
    
    
    var newMovie: Movie?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    // MARK: - IBActions
    @IBAction func addMovieTapped(_ sender: Any) {
        addMovie(movieToAppend: movieTextInput.text!)
        self.navigationController?.popViewController(animated: true)
        
    }
    
    func turnStringToMovie(nameOfMovie: String) {
        if newMovie?.name != nil {
            newMovie?.name = nameOfMovie
            newMovie?.seen = false
        }
    }
    
    func addMovie(movieToAppend: String) {
        movieTextInput.text = movieToAppend
        turnStringToMovie(nameOfMovie: movieToAppend)
        newMovie = Movie(name: movieToAppend, seen: false)
        MovieController().movies.append(newMovie!)
        
        
    }


   
    // MARK: - Navigation

   
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    }
// 

}




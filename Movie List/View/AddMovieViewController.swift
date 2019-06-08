//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
   
    
    // MARK: - Outlets and Properties
    @IBOutlet var movieTextInput: UITextField!
    var movieController: MovieController!
    
    
    var newMovie: Movie?
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
//
    // MARK: - IBActions
    @IBAction func addMovieTapped(_ sender: Any) {
        print(movieTextInput.text)
        guard let movieName = movieTextInput.text else { return }
        movieController.updateMovies(withName: movieName)

        self.navigationController?.popViewController(animated: true)
    }
    


}




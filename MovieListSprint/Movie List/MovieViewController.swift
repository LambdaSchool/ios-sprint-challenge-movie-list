//
//  MovieViewController.swift
//  Movie List
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, MoviesPresenter {
    var movieController: MovieController?
    
    
    @IBOutlet weak var movieTitleText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    


    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let title = movieTitleText.text, !title.isEmpty else { return }
        
        movieTitleText.text = ""
        movieController?.createMovie(movieTitle: title)
    }
    
    
}

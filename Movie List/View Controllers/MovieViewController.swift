//
//  MovieViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var movieController: MovieController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitle = movieTitleTextField.text, !movieTitle.isEmpty,
        let movieController = movieController else { return }
        
        movieController.createMovie(withTitle: movieTitle)
        
        navigationController?.popViewController(animated: true)
    }
    
}

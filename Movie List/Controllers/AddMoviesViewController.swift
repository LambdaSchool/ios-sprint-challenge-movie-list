//
//  AddMoviesViewController.swift
//  Movie List
//
//  Created by Sameera Roussi on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let newMovie = movieTitleTextField.text, !newMovie.isEmpty else { return }
        MovieData.shared.addMovie(newMovie)
        movieTitleTextField.text = ""
        
    }
    
    @IBAction func resetMovieDataButtonTapped(_ sender: Any) {
        MovieData.shared.resetMovieList()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set a background
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"darkblue.png")!)
        
       
        //setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:"darkblue.png"]

        // Do any additional setup after loading the view.
    }


}

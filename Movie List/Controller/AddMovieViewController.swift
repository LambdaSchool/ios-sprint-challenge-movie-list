//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_loaner_226 on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate
{
    func movieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController
{

    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var movies: [Movie] = []
    var movieController: MovieController?
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any)
    {
        guard let movieText = movieTextField.text,
        !movieText.isEmpty else {return}
        
        let movie = Movie(movieName: movieText)
        movieController?.addMovie(movie: movie)
        
        navigationController?.popViewController(animated: true)
    }
    
    
    
    
    
}

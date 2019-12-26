//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var movieController: MovieController?

    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any)
    {
        guard let movieTitle = movieTextField.text,
        !movieTitle.isEmpty else {return}
        
        let movie = Movie(movieTitle: movieTitle)
        movieController?.add(movie: movie)
        
        navigationController?.popViewController(animated: true)
    }

}

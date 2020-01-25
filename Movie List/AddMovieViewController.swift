//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol  MovieAddedDelegate {
    
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: MovieAddedDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieTapped(_ sender: UIBarButtonItem) {
        
        guard let movieName = addMovieTextField.text else { return }
        
        var movie = Movie(name: movieName)
        
        if let addMovie = addMovieTextField.text,
            !addMovie.isEmpty {
            movie.name.append(addMovie)
        }
        
        delegate?.movieWasAdded(movie: movie)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
      
    
    }
    
}

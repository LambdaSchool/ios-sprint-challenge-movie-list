//
//  NewFriendViewController.swift
//  movieList
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func addedAMovie(movie: Movie)
}


class NewFriendViewController: UIViewController {
    
    var delegate: NewMovieDelegate?
    
    // Outlets
    @IBOutlet weak var addNewMovieTextField: UITextField!
    
    @IBAction func addNewMovieButton(_ sender: Any) {
        
        guard let newMovie = addNewMovieTextField.text else {
            return
        }
        let addedMovie: Movie = Movie(name: "The Matrix", seenOrNot: true)
        
        
        delegate?.addedAMovie(movie: addedMovie)
        
    }
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

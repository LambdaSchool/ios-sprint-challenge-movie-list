//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Marissa Gonzales on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasAdded(movie: Movie)
}





class NewMovieViewController: UIViewController {
    
    // Delegate
    var delegate: NewMovieDelegate?
    
    
    // Outlet

    @IBOutlet weak var addMovieTextlabel: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // Add Movie Button Action
    
    @IBAction func AddMovieButton(_ sender: Any) {
    
        
        guard let newMovie = addMovieTextlabel.text
           else {
            return
        }
        
        let myMovie = Movie(name: newMovie, seen: true)
        
        
        delegate?.movieWasAdded(movie: myMovie)
        
        }
    
    // Movie added segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "movieAddedButtonSegue" {
            
            guard let backToTVC = segue.destination as? MyMoviesViewController else {
                return }
            
            backToTVC.delegate = self
        }
    }
}
extension NewMovieViewController: AddedAMovie {
    func addedAMovie(movie: Movie) {
    }
}

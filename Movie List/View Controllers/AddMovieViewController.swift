//
//  ViewController.swift
//  Movie List
//
//  Created by Ian French on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit


protocol AddMovieDelegate {
    func newMovieAdded(movie: Movie)
}



class AddMovieViewController: UIViewController {

   
    @IBOutlet weak var movieName: UITextField!
    
    var delegate: AddMovieDelegate?
    var movie: Movie?
    

    @IBAction func addMovieButton(_ sender: UIButton) {
        
        guard let unwrappedMovie = movieName.text,
            !unwrappedMovie.isEmpty else
            { return }
         
             
        let movie = Movie(movieName: unwrappedMovie)
        
        
        
        delegate?.newMovieAdded(movie: movie)
        navigationController?.popViewController(animated: true)
        

        
    }
    

}

extension AddMovieViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}

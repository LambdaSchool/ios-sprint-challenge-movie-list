//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Clean Mac on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegaet{
    func movieAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {
    @IBOutlet weak var movieTextField: UITextField!
    

    var delegate: AddMovieDelegaet?
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let movie = movieTextField.text,
            !movie.isEmpty else { return }
        
        let movieObject = Movie(movie: movie)
        delegate?.movieAdded(movieObject)
        
        self.dismiss(animated: true, completion: nil)
    }
    

}

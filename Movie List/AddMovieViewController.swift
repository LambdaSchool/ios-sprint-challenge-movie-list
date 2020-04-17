//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Enzo Jimenez-Soto on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let movieName = movieTextField.text, !movieName.isEmpty else {return}
        
        let movie = Movie(name: movieName, seen: false)
        
        delegate?.movieWasAdded(movie: movie)
        
        dismiss(animated: true, completion: nil)

        navigationController?.popViewController(animated: true)
        
        print("\(#function) was pressed")
    }
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieTextField.delegate = self

    }
    
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        guard let movieName = movieTextField.text, !movieName.isEmpty else { return false }
        let movie = Movie(name: movieName, seen: false)
        delegate?.movieWasAdded(movie: movie)
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        print("\(#function) was pressed")
        
        return true
    }
}



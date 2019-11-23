//
//  AddMovieViewController.swift
//  Movie List
//
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieNameTextField.delegate = self
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        guard let movieName = movieNameTextField.text,
            !movieName.isEmpty else { return }
        
        let movie = Movie(movieName: movieName)
        
        delegate?.movieWasCreated(movie)
    }
}



//
//  AddMovieViewController.swift
//  Movie List
//
//

import UIKit

protocol AddMovieDelegate {
    
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieNameTextField: UITextField!
    
    var movie: Movie?
    
    var delegate: AddMovieDelegate?
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        movieNameTextField.delegate = self as? UITextFieldDelegate
//    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        guard let movieName = movieNameTextField.text,
            !movieName.isEmpty else { return }
        
        let movie = Movie(movieName: movieName)
        
        delegate?.movieWasAdded(movie)
        dismiss(animated: true, completion: nil)
    }
}



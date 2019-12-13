//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Aaron Cleveland on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var newMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newMovieTextField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    @IBAction func cancelButtonTapped(_ sender: Any) {
//        dismiss(animated: true, completion: nil) // if i was presenting modal
        navigationController?.popViewController(animated: true) // if i am just showing
    }
    
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        if let newMovie = newMovieTextField.text,
            !newMovie.isEmpty {
            let movie = Movie(name: newMovie, hasSeen: false)
            
            delegate?.movieWasAdded(movie: movie)
//            dismiss(animated: true, completion: nil) // if i was presenting modal
            navigationController?.popViewController(animated: true) // if i am just showing
        }
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

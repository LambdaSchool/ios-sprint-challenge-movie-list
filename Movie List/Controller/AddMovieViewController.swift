//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Shawn James on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

// MARK: - AddMovieDelagate declaration
protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlets
    @IBOutlet weak var movieNameTextField: UITextField!
    
    // MARK: - Properties
    var delegate: AddMovieDelegate?
    
    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let movieName = movieNameTextField.text else { return }
        delegate?.movieWasAdded(Movie(name: movieName))
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}

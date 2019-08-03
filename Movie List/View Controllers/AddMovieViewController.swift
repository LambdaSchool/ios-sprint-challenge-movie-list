//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Dillon P on 8/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var newMovieTextField: UITextField!
    
    
    // MARK: - Properties
    
    var delegate: AddMovieDelegate?
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
    }
    

}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // resign first repsonder
        // addMovieTapped()
    }
}

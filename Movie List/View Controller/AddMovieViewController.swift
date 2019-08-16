//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Uptiie on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieUI: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func addMovieTapped(_ sender: UIButton) {
        if let text = movieTextField.text,
            !text.isEmpty {
            delegate?.movieWasAdded(Movie(title: text))
        }
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            delegate?.movieWasAdded(Movie(title: text))
        }
        
        return false
    }
}

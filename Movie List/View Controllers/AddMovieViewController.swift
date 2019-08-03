//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_141 on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded (_ movieInstance: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = addMovieTextField.text,
            !movieTitle.isEmpty else { return }
        
        let movieInstance = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(movieInstance)
        
    }
}

extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text, !text.isEmpty {
            textField.resignFirstResponder()
        }
        return false
    }
}

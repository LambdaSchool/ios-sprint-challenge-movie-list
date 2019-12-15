//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Andrew Ruiz on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieName: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovie(_ sender: UIButton) {
        guard let name = movieName.text,
            !name.isEmpty else {return}
        
        var movie = Movie(name: name)
        
        delegate?.movieWasCreated(movie)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension AddMovieViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text,
            !text.isEmpty {
            switch textField {
            case movieName:
                textField.resignFirstResponder()
            default:
                textField.resignFirstResponder()
            }
        }

        return false
    }
}

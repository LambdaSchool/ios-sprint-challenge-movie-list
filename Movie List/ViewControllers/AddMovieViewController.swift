//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Cora Jacobson on 5/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movieName = addMovieTextField.text,
            !movieName.isEmpty else { return }
        let movie = Movie(name: movieName)
        delegate?.movieWasAdded(movie)
    }

}

extension AddMovieViewController: UITextFieldDelegate {
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if let text = textField.text,
//            !text.isEmpty {
//            if text == addMovieTextField.text {
//                textField.resignFirstResponder()
//            }
//        }
//        return false
//    }
}

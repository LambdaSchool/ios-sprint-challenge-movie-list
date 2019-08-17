//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ciara Beitel on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var enterMovieTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        createMovie()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enterMovieTextField.delegate = self
    }
    
    func createMovie() {
        guard let title = enterMovieTextField.text,
            !title.isEmpty else { return }
        
        let movie = Movie(title: title, seen: true)
        
        delegate?.movieWasAdded(movie)
        self.navigationController?.popViewController(animated: true)
    }
}

// make the current VC conform to the UITextFieldDelegate
extension AddMovieViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        createMovie()
        return true
    }
}

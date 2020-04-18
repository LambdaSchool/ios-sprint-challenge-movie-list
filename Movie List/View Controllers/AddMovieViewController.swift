//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Bohdan Tkachenko on 4/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func newMovieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieDelegate?
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        guard let name = addMovieTextField.text,
                !name.isEmpty else { return }
        let movie = Movie(name: name, seen: false)
        delegate?.newMovieAdded(movie: movie)
        dismiss(animated: true, completion: nil)
        _ = navigationController?.popViewController(animated: true)
    }
}

extension AddMovieViewController: UITextViewDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}



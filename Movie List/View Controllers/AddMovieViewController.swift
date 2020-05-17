//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ian Becker on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ viewcontroller: AddMovieViewController, didUpdateMovie movie: String)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovie(_ sender: Any) {
        guard let movie = movieTextField.text else { return }
        delegate?.movieWasAdded(self, didUpdateMovie: movie)
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

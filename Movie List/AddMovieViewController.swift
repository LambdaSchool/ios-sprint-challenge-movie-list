//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by ronald huston jr on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //  place IBAction for cancel
    @IBOutlet weak var cancel: UINavigationItem!
    func dismiss(animated: true, completion: nil)
    
    
    @IBAction func AddMovieSave(_ sender: Any) {
        guard addMovieTextField.text != nil else { return }
    }
        let newMovie = Movie(name: addMovieTextField, viewed: false)
        delegate?.movieWasAdded(movie: newMovie)
}

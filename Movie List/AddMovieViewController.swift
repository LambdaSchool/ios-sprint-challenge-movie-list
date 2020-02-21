//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Wyatt Harrell on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func addMovie(_ movie: Movie)
}


class AddMovieViewController: UIViewController {

    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let title = movieTitleTextField.text else {
            return
        }
        let newMovie = Movie(name: title, hasSeen: false)
        delegate?.addMovie(newMovie)
        
        dismiss(animated: true, completion: nil)
    }
}

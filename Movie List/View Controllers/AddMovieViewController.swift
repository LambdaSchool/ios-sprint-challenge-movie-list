//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 11/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let title = movieTitleTextField.text,
            !title.isEmpty else { return }
        let movie = Movie(name: title)
        delegate?.movieWasAdded(movie)
    }
}

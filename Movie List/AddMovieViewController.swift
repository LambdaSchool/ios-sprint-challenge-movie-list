//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by conner on 2/9/20.
//  Copyright © 2020 conner. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    @IBOutlet weak var movieTextField: UITextField!
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: UIButton) {
        guard let title = movieTextField.text, (title.isEmpty == false) else { return }
        let movie = Movie(title: title, seen: false)
        
        // Add movie and pop vc from stack
        delegate?.addMovie(movie: movie)
        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
    }
}

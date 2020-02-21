//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Shawn Gee on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate: AnyObject {
    func addMovieToMovieList(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    weak var delegate: AddMovieDelegate?
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        guard let movieName = movieNameTextField.text, !movieName.isEmpty else { return }
        delegate?.addMovieToMovieList(Movie(name: movieName))
        self.navigationController?.popViewController(animated: true)
    }
}

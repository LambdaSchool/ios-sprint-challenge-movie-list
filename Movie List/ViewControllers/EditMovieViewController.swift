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

class EditMovieViewController: UIViewController {
    
    weak var delegate: AddMovieDelegate?
    
    var movie: Movie?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var movieNameTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var seenSwitch: UISwitch!
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let movieName = movieNameTextField.text, !movieName.isEmpty else { return }
        if let movie = movie {
            movie.name = movieName
            movie.hasBeenSeen = seenSwitch.isOn
        } else {
            delegate?.addMovieToMovieList(Movie(name: movieName, hasBeenSeen: seenSwitch.isOn))
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        if let movie = movie {
            titleLabel.text = "Edit movie"
            movieNameTextField.text = movie.name
            seenSwitch.isOn = movie.hasBeenSeen
            saveButton.setTitle("Save", for: .normal)
        }
    }
}

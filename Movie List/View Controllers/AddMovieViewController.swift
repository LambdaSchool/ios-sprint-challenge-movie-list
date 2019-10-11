//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Thomas Bernard Leonard II on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var seenSwitchAddMovie: UISwitch!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func seenSwitchAddMovieAction(_ sender: UISwitch) {
    }
    
    @IBAction func cancelTapped(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
    }

    @IBAction func saveTapped(_ sender: UIBarButtonItem) {
        guard let movieName = movieTextField.text,
            !movieName.isEmpty else { return }
        
        var movie = Movie(name: movieName, seen: false)
        
        if seenSwitchAddMovie.isOn {
            movie.seen = true
        } else {
            movie.seen = false
        }
        
        delegate?.movieWasAdded(movie)
}
}

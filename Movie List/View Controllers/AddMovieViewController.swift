//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mike Nichols on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func updateView()
}


class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var seenSwitch: UISwitch!
    @IBOutlet weak var movieTitle: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func cancelTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveTapped(_ sender: UIButton) {
        
        guard let movieTitle = movieTitle.text
            else { return }
        
        let movie: Movie = Movie(title: movieTitle, haveSeen: seenSwitch.isOn)
        
        moviesList.append(movie)
        delegate?.updateView()
        dismiss(animated: true, completion: nil)
        
    }
}


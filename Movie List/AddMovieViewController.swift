//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Isaac Lyons on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        guard let name = nameTextField.text, !name.isEmpty else { return }
        
        let movie = Movie(name: name, seen: false)
        
        delegate?.movieWasCreated(movie)
    }
    
}

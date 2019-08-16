//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Uptiie on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var enterMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieName = enterMovieTextField.text else { return }
        
        var movie = Movie(name: movieName)
        
        delegate?.movieWasCreated(movie)
    }
    
    
}

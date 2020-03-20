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
    //  hopefully Navigation Item works same as built in cancel
    
    @IBAction func AddMovieSave(_ sender: Any) {
        guard let addMovieTitle = addMovieTextField.text else { return }
        
            let newMovie = Movie(name: addMovieTitle, viewed: false)
            delegate?.movieWasAdded(movie: newMovie)
    }
} 

//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by ronald huston jr on 4/19/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasCreated(movie: Movie)
}
class AddMovieViewController: UIViewController {
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func addMovieSave(_ sender: Any) {
        guard let newMovieTitle = addMovieTextField.text else { return }
        
        let newMovie = Movie(name: newMovieTitle, seen: false)
        
        delegate?.movieWasCreated(movie: newMovie)
        
        navigationController?.popViewController(animated: true)
    }
    
    
}

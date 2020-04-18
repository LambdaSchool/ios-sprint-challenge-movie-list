//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Michael Self on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func addedMovie(movie: Movie)
}

class AddNewMovieViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func addMovie(_ sender: Any) {
        
        guard let newMovieTitle = textField.text, textField.text != nil else {
            return
        }
        let movie = Movie(movieNames: newMovieTitle)
        
        delegate?.addedMovie(movie: movie)
        
        navigationController?.popToRootViewController(animated: true)
    }
    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

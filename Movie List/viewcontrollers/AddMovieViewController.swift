//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Vincent Hoang on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet var movieTextField: UITextField?
    
    var movie: Movie?
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMoviePressed(_ sender: UIButton) {
        guard let unwrappedMovieName = movieTextField?.text else {
            dismiss(animated: true, completion: nil)
            return
        }
        
        delegate?.movieWasAdded(Movie(unwrappedMovieName, false))
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rob Vance on 2/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}
class AddMovieViewController: UIViewController {
//Mark: - IBOutlets
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
//Mark: - IBAction
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movieName = addMovieTextField.text,
            !movieName.isEmpty else { return }
        
        let movie = Movie(movieName: movieName, seen: false)
        
        delegate?.movieWasAdded(movie)

    }
}


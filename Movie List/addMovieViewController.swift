//
//  addMovieViewController.swift
//  Movie List
//
//  Created by denis cedeno on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieDelegate{
    func movieWasAdded(_ movie: Movie)
}

class addMovieViewController: UIViewController {
    var delegate: addMovieDelegate?
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButton(_ sender: UIBarButtonItem) {
        guard let movieString = addMovieTextField.text, !movieString.isEmpty else {return}
        let movie = Movie(movieName: movieString)
            delegate?.movieWasAdded(movie)

    }
    
 

}

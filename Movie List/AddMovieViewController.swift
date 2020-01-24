//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Enrique Gongora on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate{
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        
        if let movieTitleText = movieTextField.text, !movieTitleText.isEmpty{
            let movie = Movie(name: movieTitleText, seen: false)
            delegate?.movieWasAdded(movie)
            navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
        }
    }
}

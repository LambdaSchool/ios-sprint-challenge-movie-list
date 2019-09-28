//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Alex Thompson on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}
class AddMovieViewController: UIViewController {
    
   
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addMovieButtonPressed(_ sender: UIBarButtonItem) {
        guard let movieString = movieTitleTextField.text, !movieString.isEmpty else {return}
        let movie = Movie(movieTitle: movieString)
        
        
        
        
        
        delegate?.movieWasCreated(movie)
        dismiss(animated: true, completion: nil)
    
    
    
    }
}

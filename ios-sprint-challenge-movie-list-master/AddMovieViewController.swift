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
       guard let name = movieTitleTextField.text, !name.isEmpty else { return }
        
        let movie = Movie(name: name, isSeen: false)
        delegate?.movieWasCreated(movie)
        dismiss(animated: true, completion: nil)
        movieTitleTextField.delegate = self as? UITextFieldDelegate
        
    }
}

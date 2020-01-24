//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_254 on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addMovieSaveButton(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text else {return}
        
       
        let movie = Movie(movieTitle: movieTitle)
        
        delegate?.movieWasAdded(movie)
        
    
}
}


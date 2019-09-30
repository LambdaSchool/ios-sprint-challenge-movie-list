//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nicolas Rios on 7/31/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieViewControllerDelegate{
    func addedMovie(movie:Movie)
}

class AddMovieViewController: UIViewController {
    
    var delegate: AddMovieViewControllerDelegate?
    
    // outlet
    @IBOutlet var movieNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //Out let
    
    @IBAction func addMovieTapped(_ sender: UIButton) {
        
        guard let delegate = delegate,
        let title = movieNameTextField.text
        else {return}
        let movie = Movie(movie: title)
        delegate.addedMovie(movie: movie)
    
}
    
}

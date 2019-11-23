//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Morgan Smith on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func MovieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addMovieTapped(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text, !movieTitle.isEmpty else {return}
        
        var movie = Movie(title: movieTitle)
        
        delegate?.MovieWasCreated(movie)
    }
    

}

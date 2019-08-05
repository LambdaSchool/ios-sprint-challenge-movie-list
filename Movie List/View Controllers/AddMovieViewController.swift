//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jessie Ann Griffin on 8/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddNewMovie{
    func newMovieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddNewMovie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addMovieTapped(_ sender: Any) {
        
        guard let movieTitle = movieTitleTextField.text,
                  !movieTitle.isEmpty else { return }
        
        let movie = Movie(name: movieTitle, isSeen: false)
        
        delegate?.newMovieWasAdded(movie)
    }
    
}

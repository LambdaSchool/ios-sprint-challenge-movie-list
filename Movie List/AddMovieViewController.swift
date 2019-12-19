//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Christian Lorenzo on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    
    @IBOutlet weak var addingMovieOutlet: UITextField!
    
    
    @IBAction func saveNewMovieButton(_ sender: Any) {
        guard let movieName = addingMovieOutlet.text, !movieName.isEmpty else {return}
        let movie = Movie(movieTitle: movieName)
        
        delegate?.movieWasCreated(movie)
    }
    
    
    var delegate: AddMovieDelegate?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    
}

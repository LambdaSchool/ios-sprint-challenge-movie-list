//
//  AddMovieViewController.swift
//  MovieList
//
//  Created by Bradley Yin on 7/19/19.
//  Copyright © 2019 bradleyyin. All rights reserved.
//

import UIKit
protocol addMovieDelegate {
    func newMovieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextfield: UITextField!
    
    var delegate : addMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addMovieTapped(_ sender: Any) {
        if let movie = movieTextfield.text, !movie.isEmpty {
            let newMovie = Movie(name: movie, haveSeen: false)
            delegate?.newMovieAdded(movie: newMovie)
            self.dismiss(animated: true, completion: nil)
            
        }
        
    }
    

}

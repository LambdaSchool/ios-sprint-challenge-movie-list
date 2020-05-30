//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by John McCants on 5/29/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addMovieButton: UIButton!
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate : AddMovieDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addMovieTapped(_ sender: Any) {
        
        if let unwrappedMovie = movieTextField.text, !unwrappedMovie.isEmpty {
            let movie = Movie(moviesName: unwrappedMovie, seen: true)
            delegate?.addMovie(movie)
        
        
        
    }
    
}
}

//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Craig Belinfante on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var addMovieButton: UIButton!
    @IBOutlet weak var movieTextField: UITextField!
   
    var delegate: AddMovieDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieClicked(_ sender: Any) {
        if let unwrappedMovie = movieTextField.text, !unwrappedMovie.isEmpty {
            let movie = Movie(movie: unwrappedMovie, seen: true)
            delegate?.movieWasAdded(movie)
        }
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}




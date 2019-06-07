//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Jake Connerly on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    //
    // MARK: - Outlets
    //
    @IBOutlet weak var userMovieTextField: UITextField!
    //
    // MARK: - Actions
    //
    
    @IBAction func addMoveTapped(_ sender: UIButton) {
       
        guard let userMovieName = userMovieTextField.text else { return }
        let userMovie = Movie(movieName: userMovieName)
       movieController.loadEnteredMovie(movie: userMovie)
        _ = navigationController?.popViewController(animated: true)
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

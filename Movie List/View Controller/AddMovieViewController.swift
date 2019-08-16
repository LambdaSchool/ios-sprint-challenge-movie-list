//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Uptiie on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var MovieTitleTextField: UITextField!
    
    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let newTitle = MovieTitleTextField.text, MovieTitleTextField.text != "" else { return }
        let newMovie = Movie(title: newTitle)
        movieController?.movies.append(newMovie)
        navigationController?.popViewController(animated: true)
    }
    

}

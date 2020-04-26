//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Hannah Bain on 4/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

   @IBAction func addMovieButtonTapped(_ sender: Any) {
       
       guard let movieTitle = movieTitleTextField.text, movieTitle != "" else { return }
       
       movieController.createMovie(withTitle: movieTitle)
       
       navigationController?.popViewController(animated: true)
   }
   
   // MARK: - Properties
   
   var movieController: MovieController!
   
   @IBOutlet weak var movieTitleTextField: UITextField!

}

//
//  MovieDetailViewController.swift
//  Movie List
//
//  Created by Brian Cobb on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet var movieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
      self.view.backgroundColor = .blue
        
    }
    
    var tableViewController: MovieTableViewController?
    
    @IBAction func addButtonTappeed(_ sender: Any) {
        
        guard let newMovie = movieTextField.text else { return}
        
        tableViewController?.newMovies.append(newMovie)
        self.view.backgroundColor = .red
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func addNewMovieBottom(_ sender: Any) {
        
        guard let newMovie = movieTextField.text else { return}
        
        tableViewController?.newMovies.append(newMovie)
        
        navigationController?.popViewController(animated: true)
        self.view.backgroundColor = .red
        
    }
    
    @IBAction func moviesBottomButton(_ sender: Any) {
        guard let newMovie = movieTextField.text else { return}
        
        tableViewController?.newMovies.append(newMovie)
        
        navigationController?.popViewController(animated: true)
        
        
        
        
        
    }
    
    
}

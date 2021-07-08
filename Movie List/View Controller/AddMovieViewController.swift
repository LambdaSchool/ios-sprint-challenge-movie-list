//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by patelpra on 5/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    var movieController: MovieController?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addMovieTapped(_ sender: Any) {
        guard let name = self.nameTextField.text else { return }
        
        if name != "" {
            self.movieController?.createMovie(with: name)
            navigationController?.popViewController(animated: true)
        }
    }
}

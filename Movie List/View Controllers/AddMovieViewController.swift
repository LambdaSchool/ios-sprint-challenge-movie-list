//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by patelpra on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    var movieController: MovieController?

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func addMovieTapped(_ sender: Any) {
        guard let name = self.nameTextField.text else {
            return
        }
        
        if name != "" {
            self.movieController?.createMovie(with: name)
            
            navigationController?
            .popViewController(animated: true)
        }
        
    }
    
}

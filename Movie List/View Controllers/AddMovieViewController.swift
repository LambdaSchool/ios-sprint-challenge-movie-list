//
//  File.swift
//  Movie List
//
//  Created by Jordy on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    var movieController: MovieController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var movieTextField: UITextField!
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = movieTextField.text else {return}
        
        movieController?.createNewMovie(with: name)
    }
}

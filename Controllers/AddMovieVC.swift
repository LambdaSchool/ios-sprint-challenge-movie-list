//
//  AddMovieVC.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController, MovieControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var movieController: MovieController?
    
    @IBOutlet weak var addANewMovieLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    // MARK: - submitButton Action
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let text = textField.text else { return }
        movieController?.createMovie(title: text)
    }
}

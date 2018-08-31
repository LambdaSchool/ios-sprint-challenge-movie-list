//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController, MovieControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addMovie(_ sender: Any) {
        guard let title = movieTitle.text else { return }
        
        movieController?.addMovie(name: title)
    }
    
    var movieController: MovieController?
    @IBOutlet weak var movieTitle: UITextField!
}

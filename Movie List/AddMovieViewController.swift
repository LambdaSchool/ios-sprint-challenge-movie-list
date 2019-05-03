//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Anesa Krnic on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let addMovieTextField = Notification.Name("MovieCell")
    
}
class AddMovieViewController: UIViewController, MovieControllerProtocol {
    var movieController: MovieController?
    
    @IBOutlet weak var addMovieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        self.movieController?.create(name: addMovieTextField.text ?? "")
        addMovieTextField.text = nil
        
        
    }
    

}

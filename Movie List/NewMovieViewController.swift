//
//  NewMovieViewController.swift
//  Movie List
//
//  Created by Bhawnish Kumar on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit
protocol MovieDelegate {
    func movieWasCreated(movie: Movie)
}
class NewMovieViewController: UIViewController {
    @IBOutlet weak var movieTextField: UITextField!
    
    var delegate: MovieDelegate?
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let movie = movieTextField.text else { return }
               var movies: [String] = []
               if let movie1 = movieTextField.text,
                   !movie1.isEmpty {
                   movies.append(movie1)
               }
        
        let addMovie = Movie(name: movie)
        delegate?.movieWasCreated(movie: addMovie)
        dismiss(animated: true, completion: nil)
    }
    
}

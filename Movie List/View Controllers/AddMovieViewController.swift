//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Elizabeth Thomas on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movie: Movie)
}


class AddMovieViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    // MARK: - Private Properties
    var delegate: AddMovieDelegate?
    
    // MARK: - IBActions
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitle = movieTitleTextField.text, !movieTitle.isEmpty else { return }
        var movie = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(movie)
        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

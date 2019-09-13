//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by Isaac Lyons on 9/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieDelegate {
    func movieWasEdited(movie: Movie, index: Int)
}

class EditMovieViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var movie: Movie?
    var movieIndex: Int?
    var delegate: EditMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    private func updateViews() {
        guard let movie = movie else { return }
        
        nameTextField.text = movie.name
    }

    @IBAction func saveTapped(_ sender: UIButton) {
        guard let name = nameTextField.text, !name.isEmpty else { return }
        guard var movie = movie else { return }
        guard let movieIndex = movieIndex else { return }
        
        movie.name = name
        
        delegate?.movieWasEdited(movie: movie, index: movieIndex)
    }
}

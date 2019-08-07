//
//  MovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_101 on 6/9/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var enterMoviesTextField: UITextField!
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMoviesButton(_ sender: UIButton) {
        guard let movieName = enterMoviesTextField.text,
            !movieName.isEmpty else { return }
        
          let movie = Movie(moviesName: movieName)
        delegate?.movieWasCreated(movie)
        navigationController?.popViewController(animated: true)
    }

}

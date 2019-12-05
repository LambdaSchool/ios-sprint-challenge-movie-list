//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Waseem Idelbi on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    var delegate: AddMovieDelegate?
    

    @IBOutlet var movieTitleTextField: UITextField!
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let movieTitle = movieTitleTextField.text,
            !movieTitle.isEmpty else {return}
        let movie = Movie(title: movieTitle)
        delegate?.movieWasAdded(movie: movie)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

//
//  addMovieTitleViewController.swift
//  Movie List
//
//  Created by denis cedeno on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol addMovieTitleDelegate{
    func movieWasAdded(_ movie: Movie)
}

class addMovieTitleViewController: UIViewController {
    @IBOutlet weak var addMovieLabel: UILabel!
    @IBOutlet weak var addMovieTitleTextField: UITextField!
    
    var delegate: addMovieTitleDelegate?
    
    @IBAction func addMovieTitleButton(_ sender: Any) {
        guard let movieString = addMovieTitleTextField.text, !movieString.isEmpty else {return}
                let movie = Movie(movieName: movieString)
                    delegate?.movieWasAdded(movie)
               //dismiss(animated: true, completion: nil)
    }
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }


}

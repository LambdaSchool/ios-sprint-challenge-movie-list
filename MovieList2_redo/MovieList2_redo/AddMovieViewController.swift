//
//  AddMovieViewController.swift
//  MovieList2_redo
//
//  Created by Craig Belinfante on 7/8/20.
//  Copyright © 2020 Craig Belinfante. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var delegate: AddMovie?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        guard let unwrappedMovie = textField.text, !unwrappedMovie.isEmpty else {return}
        let movie = Movie(name: unwrappedMovie, seen: true)
        delegate?.movieAdded(movie)
        }

    /*
    // MARK: - Navig

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol AddMovie {
    func movieAdded(_ movie: Movie)
}


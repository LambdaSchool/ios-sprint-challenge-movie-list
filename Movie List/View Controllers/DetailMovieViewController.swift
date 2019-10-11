//
//  DetailMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_204 on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DetailMovieViewController: UIViewController {

    @IBOutlet weak var movieLabel: UILabel!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EditMovieSegue" {
            if let editMovieVC = segue.destination as? EditMovieViewController {
                editMovieVC.movie = movie
            }
        }
    }
        
    private func updateViews() {
        guard let movie = movie else { return }
        
        movieLabel.text = movie.name
    }
}

extension DetailMovieViewController: EditMovieDelegate {
    func movieWasEdited(_ movie: Movie) {
        movieLabel.text = movie.name
    }
}

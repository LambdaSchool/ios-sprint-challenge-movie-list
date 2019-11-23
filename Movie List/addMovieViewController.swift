//
//  addMovieViewController.swift
//  Movie List
//
//  Created by Osha Washington on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class addMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    @IBAction func addMovieButtonTapped(_ sender: UIButton) {
        guard let title = movieTitleTextField.text,
            !title.isEmpty else { return }
        
        var movie = Movie(movieName: title, seen: false)
        
        delegate?.movieWasCreated(movie)
    }
    
}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

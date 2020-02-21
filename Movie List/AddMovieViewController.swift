//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Nichole Davidson on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_movie: Movie)
}

class AddMovieViewController: UIViewController {

    
    @IBOutlet weak var enterMovieTitleTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        
        guard let movieTitle = enterMovieTitleTextField.text else { return }
        var movies: [String] = []
        if let movieTitle = enterMovieTitleTextField.text,
            !movieTitle.isEmpty {
            movies.append(movieTitle)
        }
        
        let movie = Movie(name: movieTitle)
        delegate?.movieWasAdded(_movie: movie)
        
        self.navigationController?.popViewController(animated: true)
        
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

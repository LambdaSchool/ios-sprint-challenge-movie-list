//
//  AddMovieViewController.swift
//  MovieListSprint
//
//  Created by admin on 7/19/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded( movie: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    @IBAction func addMovieButton(_ sender: UIButton) {
        guard let movieTitle = movieTitleTextField.text,
        !movieTitle.isEmpty else { return }
        
        let movies = Movie(movieTitle: movieTitle)
        
        self.navigationController?.popToRootViewController(animated: true)
        
        delegate?.movieWasAdded(movie: movies)
    }
    
    var delegate: AddMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

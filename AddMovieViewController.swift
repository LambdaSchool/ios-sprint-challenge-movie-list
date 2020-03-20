//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Violet Lavender Love on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var movieTitleTextField: UITextField!
    var delegate: AddMovieDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func saveTapped(_ sender: Any) {
        guard let addMovie = MovieTitleTextField.text else {return}
        let movie = Movie(Title: addMovie, hasSeen: Bool)
        delegate?.movieWasAdded(movie: movie)
               dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelTapped(_ sender: Any) {
                  dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}

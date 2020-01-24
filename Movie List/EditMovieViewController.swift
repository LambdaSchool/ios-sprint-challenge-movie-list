//
//  EditMovieViewController.swift
//  Movie List
//
//  Created by scott harris on 1/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol EditMovieDelegate {
    func movieWasEdited(_ movie: Movie, at index: Int)
}

class EditMovieViewController: UIViewController {
    @IBOutlet weak var movieNameTextField: UITextField!
    
    var movie: Movie?
    var index: Int?
    
    var delegate: EditMovieDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveTapped(_ sender: Any) {
        if let movie = movie,
            let index = index {
            delegate?.movieWasEdited(movie, at: index)
            navigationController?.popViewController(animated: true)
        }
        
        
    }
    
    
    func updateViews() {
        if let movie = movie {
            movieNameTextField.text = movie.name
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

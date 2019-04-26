//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {
    var movieController: MovieController?
    var moviesViewController: MoviesViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var newMovieTitleTextField: UITextField!
    
    @IBAction func addMovieButtonPressed(_ sender: Any) {
        
        guard let title = newMovieTitleTextField.text else { return }
        movieController?.addMovie(title: title)
        
        moviesViewController?.tableView.reloadData()
        newMovieTitleTextField.text = ""
        
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

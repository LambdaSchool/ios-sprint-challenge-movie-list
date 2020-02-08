//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Breena Greek on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated( movies: Movie)
}

class AddMovieViewController: UIViewController {
    
    // MARK: IBOutlets
    
    
    @IBOutlet weak var movieText: UITextField!
    
    // MARK: IBActions
    
    @IBAction func addMovieTapped(_ sender: UIBarButtonItem) {
    guard let addMovie = movieText.text,
        !addMovie.isEmpty else { return }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
}

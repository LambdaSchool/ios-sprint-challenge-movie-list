//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by ronald huston jr on 4/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasCreated(movie: Movie)
}
class AddMovieViewController: UIViewController {

    var delegate: NewMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addMovie(_ sender: Any) {
        guard let newMovieTitle = // need to set up
    }
    


}

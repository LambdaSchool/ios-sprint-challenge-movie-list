//
//  AddController.swift
//  Movie List
//
//  Created by Austin Cole on 11/9/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit
class AddController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    
    
    @IBAction func add(_ sender: Any) {
    guard let movie = textField.text, !movie.isEmpty else {return}
    Model.shared.addMovie(movie)
    //tableView.insertRows(at: [IndexPath(row: Model.shared.numberOfRows() - 1, section: 0)], with: .fade )
    textField.text = nil
        tableView.insertRows(at: [IndexPath(row: Model.shared.numberOfMovies() - 1, section: 0)], with: .top)
    
    
}

}

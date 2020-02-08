//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by J-Skenandore on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasAdded(_ movieInstance: Movie)
}

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var addMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        guard let movieTitle = addMovieTextField.text, !movieTitle.isEmpty else { return }
        
        let movieInstance = Movie(name: movieTitle)
        
        delegate?.movieWasAdded(movieInstance)
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

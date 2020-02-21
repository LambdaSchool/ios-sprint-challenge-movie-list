//
//  ChangeMovieTitleViewController.swift
//  Movie List
//
//  Created by Wyatt Harrell on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol ChangeMovieTitleDelegate {
    func changeMovieTitle(title: String)
}

class ChangeMovieTitleViewController: UIViewController {

    @IBOutlet weak var movieTitleTextField: UITextField!
    
    var delegate: ChangeMovieTitleDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        guard let title = movieTitleTextField.text, !title.isEmpty else {
            return
        }
        delegate?.changeMovieTitle(title: title)
        self.navigationController?.popViewController(animated: true)
    }
    

}

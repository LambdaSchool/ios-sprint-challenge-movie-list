//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate: class {
    func movieWasAdded(_ movie: Movie)
}

class AddMovieViewController: UIViewController {

    
    
    
    var addMovieDelegate: AddMovieDelegate?
    @IBOutlet weak var addMovieTextField: UITextField!
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func addMovieButtonClicked(_ sender: UIButton) {
        
        guard let movieName = addMovieTextField.text, !movieName.isEmpty else {return}
        
        let movie = Movie(name: movieName)
        addMovieDelegate?.movieWasAdded(movie)
        
        
        
        
    }
    
    
    
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

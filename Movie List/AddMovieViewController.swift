//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Malik Barnes on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(movie: Movie)
}

class AddMovieViewController: UIViewController {
    @IBOutlet weak var AddMovieTextField: UITextField!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddMovieTapped(_ sender: Any) {
        
        if let name = AddMovieTextField.text {
            
            var movie = Movie(name: name)
              
            delegate?.movieWasCreated(movie: movie)
               dismiss(animated: true, completion: nil)
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

//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Lambda_School_Loaner_220 on 11/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieAdded(movie: Movie)
}

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieTextField: UITextField!
    @IBOutlet weak var addMovieButton: UIButton!
    
    var delegate: AddMovieDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
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

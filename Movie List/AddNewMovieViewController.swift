//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Cody Morley on 3/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol NewMovieDelegate {
    func movieWasAdded(movie: Movie)
}

class AddNewMovieViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func addMovie(_ sender: Any) {
    }
    
    var delegate: NewMovieDelegate?
    
    
    
    
    
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

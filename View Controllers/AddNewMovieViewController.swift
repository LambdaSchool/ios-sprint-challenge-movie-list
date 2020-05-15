//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Bryan Cress on 5/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieViewController: UIViewController {
    @IBOutlet weak var movieTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SaveMovieButton(_ sender: Any) {
        guard let movie = movieTextField.text else { return }
        
    }
    
    let movie = Movie(name: "Hitchhikers Guide To The Galaxy")

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

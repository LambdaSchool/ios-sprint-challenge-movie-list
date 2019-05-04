//
//  AddNewMovieListViewController.swift
//  Movie List
//
//  Created by Dongwoo Pae on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNewMovieListViewController: UIViewController {
    @IBOutlet weak var addNewMovieLabel: UILabel!
    
    @IBOutlet weak var movieNameTextField: UITextField!
    
    
    var movieController : MovieController?
    
    
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
    @IBAction func addMovieButtonTapped(_ sender: Any) {
    }
    
}

//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Andrew Dhan on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addMovie(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //MARK: - Properties
    
    @IBOutlet weak var movieTitleLabel: UITextField!
    
}

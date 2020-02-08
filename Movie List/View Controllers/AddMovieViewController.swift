//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Chad Parker on 2/7/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    @IBOutlet weak var movieNameLabel: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {

    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}

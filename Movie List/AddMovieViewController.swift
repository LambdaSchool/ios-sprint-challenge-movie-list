//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Mark Gerrior on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

protocol AddMovieDelegate {
    func movieWasCreated(_ movie: Movie)
}

class AddMovieViewController: UIViewController {
    // This is to let the delegator (self) to communicate with the deleget (TBD)
    var delegate: AddMovieDelegate?

    @IBOutlet weak var stackTitle: UITextField!
    
    @IBAction func save(_ sender: Any) {
        guard let title = stackTitle.text else { return }

        // Make a movie
        let movie = Movie(title: title)
        
        // Pass movie back to table view controller
        delegate?.movieWasCreated(movie)
        
        dismiss(animated: true, completion: nil)
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

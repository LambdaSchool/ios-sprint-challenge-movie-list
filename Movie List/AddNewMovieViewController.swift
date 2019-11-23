//
//  AddNewMovieViewController.swift
//  Movie List
//
//  Created by Kennedy Samarakody on 11/22/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class AddNewMovieViewController: UIViewController {
    
   
      @IBOutlet weak var movieTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        

        // Do any additional setup after loading the view.
    }
    
    
    
    
  
   
    
    
    @IBAction func addMovieButton(_ sender: Any) {
        guard let movie = movieTextField.text else {return}
            
            
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



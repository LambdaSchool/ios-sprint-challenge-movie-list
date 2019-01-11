//
//  ViewController.swift
//  Movie List
//
//  Created by Angel Buenrostro on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

   @IBAction func add(_ sender: Any) {
    guard let text = textField.text, !text.isEmpty else { return }
    List.shared.addItem(text)
//    tableView.insertRows(at: [IndexPath(row: List.shared.itemCount()-1, section: 0)], with: .right)
    textField.text = nil
//    tableView.reloadData()
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

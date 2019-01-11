//
//  MovieListViewController.swift
//  Movie List
//
//  Created by Angel Buenrostro on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.shared.itemCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "moviecell", for: indexPath)
        
        cell.textLabel!.text = List.shared.item(at: indexPath.row)
        return cell
    }
    @IBAction func add(_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else { return }
               List.shared.addItem(text)
        //        tableView.insertRows(at: [IndexPath(row: List.shared.itemCount()-1, section: 0)], with: .right)
               textField.text = nil
        //        tableView.reloadData()
    }
    
    @IBOutlet weak var textField: UITextField!
    //    @IBOutlet weak var tableView: UITableView!
//    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet var tableView: UITableView!
    @IBAction func editTable(_ sender: UIBarButtonItem) {
        //        self.tableView.isEditing = !self.tableView.isEditing  // Simple Edit implementation
        //        sender.title = self.tableView.isEditing ? "Done" : "Edit"
        tableView.setEditing(true, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
    }
    @objc
    func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
    }
    
//    @IBAction func add(_ sender: UIButton) {
//        guard let text = textField.text, !text.isEmpty else { return }
//        List.shared.addItem(text)
//        tableView.insertRows(at: [IndexPath(row: List.shared.itemCount()-1, section: 0)], with: .right)
//        textField.text = nil
//        tableView.reloadData()
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        List.shared.removeItem(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        List.shared.moveItem(from: sourceIndexPath.row, to: destinationIndexPath.row)
    }
    
    let reuseIdentifier = "moviecell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}


//
//  MoviesViewController.swift
//  Movie List
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var defaultName = UserDefaults.standard
    
    
    /* // attempt to preserve the list of movies between subsequent runs of the application
    func viewController(withRestorationIdentifierPathidentifierComponents: [Any], coder: NSCoder) -> UIViewController? {
        let vc = MoviesViewController()
        
        vc.restorationIdentifier = identifierComponents.last as? String
        vc.restorationClass = MoviesViewController.self
        
        return vc
    }
    */
    
    let reuseIdentifier = "cell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // set the object that acts as the data source to the UIViewController class
        tableView.dataSource = self
        
        // set the object that acts as the delegate to the UIViewController class
        tableView.delegate = self
        
        // reload data
        tableView.reloadData()
        
    }

    
    // MARK: - Table View Data Source
    // Data Source provides the number of rows that is equal to the number of movies in the Model
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Model.shared.movieCount()
    }
    
    // Data Source provides what data the cells should contain
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // get a cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // get a movie from the model
        let movie = Model.shared.movie(at: indexPath.row)
        
        // set up the cell with the model object that we have
        cell.textLabel?.text = movie
        
        // return the cell back to the table view
        return cell
        
        
    }
    
    // Data Source commits insertion or deletion at a specified row
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // delete items
        guard editingStyle == .delete else { return }
        
        // update Model by removing movie from the Model
        Model.shared.removeMovie(at: indexPath.row)
        
        // update table view by removing it from the table view with a swipe
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    // Data Source commits row re-ordering
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        // call the Model's move action and update the Model
        Model.shared.moveMovie(from: sourceIndexPath.row, to: destinationIndexPath.row)
        
        // update the table view
        tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
    }
    
    // MARK: - Interactive Edits
    // editing mode
    @IBAction func editTable(_ sender: Any) {
        tableView.setEditing(true, animated: true)
        
        // connect function
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(stopEditingTable(_:)))
        
        navigationItem.rightBarButtonItem = doneButton
    }
    
    // stop editing mode
    @objc func stopEditingTable(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        
        // connect function
        let editButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editTable(_:)))
        
        navigationItem.rightBarButtonItem = editButton
    }
    
    
}

//
//  MainViewController.swift
//  MovieList
//
//  Created by Nick Nguyen on 1/24/20.
//  Copyright © 2020 Nick Nguyen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,AddMovieViewControllerDelegate {
    func didAddMovie(for movie: String) {
        movies.append(movie)
        mainTableView.reloadData() // Important
    }

    @IBOutlet weak var mainTableView: UITableView!
    
    var movies = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
          setUpNavBar()
    }
    

    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Helper.segueId {
            if let destVC = segue.destination as? AddMovieViewController {
                destVC.delegate = self
            } }
    }
    func setUpNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
   
}

// MARK: - TableView DataSource

extension MainViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Helper.tableCellId, for: indexPath) as! CustomCell
        cell.textLabel?.text = movies[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 24)
        cell.delegate = self
        return cell
    }
 func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
           movies.remove(at: indexPath.row)
           let indexPaths = [indexPath]
           tableView.deleteRows(at: indexPaths, with: .automatic) // Swipe to delete .
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentIndex = tableView.indexPathForSelectedRow
        let ac = UIAlertController(title: "Edit movie", message: nil, preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak ac] (_) in
            let textField = ac?.textFields![0] // Force unwrapping because we know it exists.
            self.movies[currentIndex!.row] = textField!.text!
            tableView.reloadData()
        }))
        
        ac.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        ac.addTextField { (textField) in
            textField.text = self.movies[currentIndex!.row]
        }
        
        
        present(ac, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
extension MainViewController: CellButtonDelegate {
    func didTapButton(for button: UIButton) {
        switch button.currentTitle {
        case "Seen":
            button.setTitle("Unseen", for: .normal)
            button.tintColor = UIColor.systemRed
        case "Unseen":
            button.setTitle("Seen", for: .normal)
             button.tintColor = UIColor.systemBlue
        default:
            break
        }
    }
    
   
}

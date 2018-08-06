//
//  ThoughtTableViewController.swift
//  Relaxi
//
//  Created by Anya on 02/08/2018.
//  Copyright © 2018 Anya Kundakchian. All rights reserved.
//

import UIKit
import RealmSwift
import ChameleonFramework

class ThoughtTableViewController: UITableViewController {
    
    let realm = try! Realm()
    
    var thoughts : Results<Thought>?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadThoughts()
        
        tableView.separatorStyle = .singleLine

    }
    
    //MARK:- Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //nil coalescing operator
        return thoughts?.count ?? 1
    }
    
    //Delegate method how we should display our cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //already a swipeable cell, inherits from superclass
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThoughtsLogCell", for: indexPath)
        
        if let thought = thoughts?[indexPath.row] {
        
            cell.textLabel?.text = thought.thoughtDescription ?? "No Thoughts added yet"
            cell.backgroundColor = UIColor(hexString: "D4CCFF")
        }
        
        return cell
    }
    
    
    //MARK:- Data Manipulation Methods
    
    func save(thought: Thought) {
        
        do {
            try realm.write {
                realm.add(thought)
            }
        } catch {
            print(error)
        }
        
        //forces tableView to call its data source methods again
        tableView.reloadData()
        
    }
    
    func loadThoughts() {
        
        thoughts = realm.objects(Thought.self)
        
        tableView.reloadData()
    }

    
    // MARK:- Add new Thoughts
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
    
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add new Thought", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            
            //what will happen once the user clicks the add button on our UIAlert
            
            let newThought = Thought()
            newThought.thoughtDescription = textField.text!
            self.save(thought: newThought)
            self.tableView.reloadData()
            
//                do {
//                    try self.realm.write {
//                        let newThought = Thought()
//                        newThought.thoughtDescription = ""
//                        self.save(thought: newThought)
//                    }
//                } catch {
//                    print("Error saving new items \(error)")
//                }
//
//            self.tableView.reloadData()
        }
        alert.addAction(action)
        
        //add text field to our alert
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Add new Thought"
            textField = alertTextField
        }
        
        //show our alert
        present(alert, animated: true, completion: nil)
        
    }
    
    
}

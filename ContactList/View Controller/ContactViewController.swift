//
//  ViewController.swift
//  ContactList
//
//  Created by Asya Sher on 09.11.2022.
//

import UIKit

class ContactViewController: UITableViewController {
    
    var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personName", for: indexPath)

        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content

        return cell
        
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let contact = persons[indexPath.row]
//        performSegue(withIdentifier: "show", sender: contact)
//    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let personInfoVC = segue.destination as? PersonViewController else { return }
        personInfoVC.person = persons[indexPath.row]
    }

}


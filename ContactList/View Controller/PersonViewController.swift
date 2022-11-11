//
//  PersonViewController.swift
//  ContactList
//
//  Created by Asya Sher on 11.11.2022.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = "E-mail: \(person.email)"
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        
        title = person.fullName
    }


}

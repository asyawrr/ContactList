//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Asya Sher on 11.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewController()
    }
    
    private func updateViewController() {
//        guard let viewControllers = tabBar.viewControllers else { return }
//
//        for viewController in viewControllers {
//            if let contactVC = viewController as? ContactViewController {
//                contactVC.persons = Person.getPersons()
//            } else if let infoVC = viewController as? ContactInfoViewController {
//                infoVC.persons = Person.getPersons()
//            } else {
//                return
//            }
        let persons = Person.getPersons()
        
        guard let contactVC = viewControllers?.first as? ContactViewController else { return }
        guard let infoVC = viewControllers?.last as? ContactInfoViewController else { return }
    
        contactVC.persons = persons
        infoVC.persons = persons
    }
}

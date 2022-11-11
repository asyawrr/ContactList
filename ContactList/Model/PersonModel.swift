//
//  PersonModel.swift
//  ContactList
//
//  Created by Asya Sher on 09.11.2022.
//

import Foundation

let source = DataStore().self

struct Person{
    
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String{
        "\(name) \(surname)"
    }
}

extension Person{
    static func getPersons() -> [Person] {
    var persons: [Person] = []
    
    let names = source.names.shuffled()
    let surnames = source.surnames.shuffled()
    let phoneNumbers = source.phoneNumbers.shuffled()
    let emails = source.emails.shuffled()
    
    var personData: [[String]] = [[]]
    personData.append(names)
    personData.append(surnames)
    personData.append(phoneNumbers)
    personData.append(emails)
    
    var personsCount: Int = 0
    
    for datum in personData {
        if datum.count <= personsCount {
            personsCount = datum.count
        }
    }
    
    for index in 0..<personsCount{
        let person = Person(
            name: names[index],
            surname: surnames[index],
            phoneNumber: phoneNumbers[index],
            email: emails[index]
        )
        persons.append(person)
    }
    return persons
    }
}


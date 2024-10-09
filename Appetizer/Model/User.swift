//
//  User.swift
//  Appetizer
//
//  Created by Shashwat Singh on 10/10/24.
//

import Foundation

struct User : Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}

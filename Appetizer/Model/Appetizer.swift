//
//  Appetizer.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import Foundation

struct Appetizer : Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse : Decodable{
    let request : [Appetizer]
}



struct MockData{
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer, it's super Yummy!",
                                           price: 9.9,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 100,
                                           carbs: 100)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}

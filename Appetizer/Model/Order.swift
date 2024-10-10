//
//  Order.swift
//  Appetizer
//
//  Created by Shashwat Singh on 10/10/24.
//

import SwiftUI

final class Order : ObservableObject{
    
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer : Appetizer){
        items.append(appetizer)
    }
    
}


//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            List(MockData.appetizers){appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍱 Appetizers")
            .listStyle(.plain)
            
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}

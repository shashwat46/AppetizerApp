//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State private var appetizers: [Appetizer] = []
    
    
    var body: some View {
        NavigationView{
            List(appetizers){appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍱 Appetizers")
            .listStyle(.plain)
        }
        .onAppear{
            getAppetizers()
        }
    }
    
    func getAppetizers(){
        NetworkManager.shared.getAppetizers{ result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}

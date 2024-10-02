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
                HStack{
                    Image("asian-flan-steak")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .frame(width: 120, height : 100)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("\(appetizer.name)")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Text("$\(appetizer.price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                    }
                }
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

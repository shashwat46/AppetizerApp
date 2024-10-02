//
//  AppetizerListCell.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer : Appetizer
    
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
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
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}

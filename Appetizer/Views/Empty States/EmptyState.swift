//
//  EmptyState.swift
//  Appetizer
//
//  Created by Shashwat Singh on 10/10/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message:   String
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
                
            }
            .offset(y: -50)
        }
    }
}

struct EmptyState_Previews: PreviewProvider {
    static var previews: some View {
        EmptyState(imageName: "empty-order", message: "Default Message.\n Made long for testing to see if it wraps")
    }
}

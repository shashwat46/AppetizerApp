//
//  OrderView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(MockData.orderItems){appetizer in
                        AppetizerListCell(appetizer: appetizer)
                        
                    }
                }
                .listStyle(.plain)
                
                Button{
                    print("order placed")
                } label: {
                    APButton(title: "99.99 - Place Order")
                }
                .padding(.bottom,25)
            }
            .navigationTitle("🛒 Orders")
        }
        
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

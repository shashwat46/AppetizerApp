//
//  OrderView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button{
                        print("order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom,25)
                }
                
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \n Please add an appetizer.")
                }
            }
            .navigationTitle("🛒 Orders")
        }
        
    }
    
    
}


struct Previews_OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

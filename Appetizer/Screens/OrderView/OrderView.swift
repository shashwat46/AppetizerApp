//
//  OrderView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var  orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(MockData.orderItems){appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
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
    
    func deleteItems(at offsets: IndexSet){
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

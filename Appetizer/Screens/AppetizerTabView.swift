//
//  AppetizerTabView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView{
            AppetizerListView()
                .tabItem {Label("Home", systemImage: "house")}
            
            AccountView()
                .tabItem {Label("Account", systemImage: "person")}
            
            OrderView()
                .tabItem {Label("Order", systemImage: "bag")}
                .badge(order.items.count)
        }
//        .accentColor(.brandPrimary)   !!DEPRECATED!!
    }
}

struct AppetizerTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}

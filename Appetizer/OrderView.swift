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
            Text("OrderView")
                .navigationTitle("🛒 Orders")
        }

    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}

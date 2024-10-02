//
//  AppetizerListView.swift
//  Appetizer
//
//  Created by Shashwat Singh on 2/10/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.appetizers){appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("🍱 Appetizers")
                .listStyle(.plain)
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            
            if viewModel.isLoading{
                LoadingView()
            }
       
        }
        .alert(item: $viewModel.alertItem){ alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}

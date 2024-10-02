//
//  AppetizerListViewModel.swift
//  Appetizer
//
//  Created by Shashwat Singh on 3/10/24.
//

import Foundation

final class AppetizerListViewModel : ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    
    func getAppetizers(){
        isLoading = true
        NetworkManager.shared.getAppetizers{ result in
            DispatchQueue.main.async { [self] in
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}

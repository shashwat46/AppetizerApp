//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by Shashwat Singh on 10/10/24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData : Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges(){
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    
    func retrieveUser(){
        guard let userData = userData else { return }
        
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }

    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.emptyField
            return false
        }
        
        guard user.email.isValidEmail else{
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
}

//
//  Alert.swift
//  Appetizer
//
//  Created by Shashwat Singh on 3/10/24.
//

import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title : Text
    let message : Text
    let dismissButton : Alert.Button
}


struct AlertContext {
    //MARK: - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                              message: Text("The data recieved from the server was invalid. Please contact support."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again later or contact Support"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the Server. If this persists, please contact Support"),
                                            dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection"),
                                              dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    static let invalidEmail     = AlertItem(title: Text("Invalid Email Format"),
                                            message: Text("The email ID you entered is invalid, kindly enter a valid email"),
                                            dismissButton: .default(Text("OK")))
     
    static let emptyField       = AlertItem(title: Text("Input Field empty"),
                                            message: Text("First name, Last Name and email cannot be empty"),
                                            dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess  = AlertItem(title: Text("Profile Saved"),
                                            message: Text("Your information was successfully saved"),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidUserData  = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error while saving or retrieving your profile"),
                                            dismissButton: .default(Text("OK")))
}

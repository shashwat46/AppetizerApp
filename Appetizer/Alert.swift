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

}

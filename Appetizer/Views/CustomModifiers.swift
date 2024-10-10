//
//  CustomModifiers.swift
//  Appetizer
//
//  Created by Shashwat Singh on 10/10/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content : Content) -> some View{
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

//
//  MeButtons.swift
//  UsApp
//
//  Created by Gowtham on 9/22/23.
//

import SwiftUI
import QuickLook


struct CustomButton: View {
    var text: String
    var number: String
    var clicked: (() -> Void) /// use closure for callback
    
    var body: some View {
        Button(action: clicked) { /// call the closure here
            HStack (spacing: 10) {
                Text(number)
                
                
                Text(text) /// your text
                Spacer()
                Image(systemName: "control")
                    .rotationEffect(.degrees(90))
                    .imageScale(.small)
                /// your icon image
            }
            .foregroundColor(Color.white)
            .padding()
            .cornerRadius(16)
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(Font.custom("GloriaHallelujah", size: 22))
            
        }
        Divider().overlay(Color.white).frame(minHeight: 9)
    }
}



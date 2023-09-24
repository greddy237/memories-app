//
//  YouView.swift
//  UsApp
//
//  Created by Gowtham on 9/22/23.
//

import SwiftUI
import QuickLook

struct YouView: View {
    @State var url: URL?
    var body: some View {
        
        ZStack {
            Image("Image6").resizable().ignoresSafeArea()
            VStack {
                Text("Letters  |   You").font(Font.custom("Merienda-Regular", size: 37)).foregroundColor(Color.white)
                ScrollView {
                    Group {
                        CustomButton(
                            text: "Birthday Present 2021", number: "1 - "
                        ) {
                            pathFinder(path: "Birthday Present 2021")
                        }
                        
                        CustomButton(
                            text: "Before Leaving to Dubai", number: "2 - "
                        ) {
                            pathFinder(path: "Before Leaving to Dubai")
                        }
                        
                        CustomButton(
                            text: "Keeping Mia", number: "3 - "
                        ) {
                            pathFinder(path: "Keeping Mia")
                        }
                        
                        CustomButton(
                            text: "Valentines Day Present 2022", number: "4 - "
                        ) {
                            pathFinder(path: "Valentines Day Present 2022")
                        }
                        
                        CustomButton(
                            text: "Anniversary Letter 2022", number: "5 - "
                        ) {
                            pathFinder(path: "Anniversary Letter")
                        }
                        
                        CustomButton(
                            text: "Anniversary Present 2022", number: "6 - "
                        ) {
                            pathFinder(path: "Anniversary Present 2022")
                        }
                        
                        CustomButton(
                            text: "Birthday Present 2022", number: "7 - "
                        ) {
                            pathFinder(path: "Birthday Present 2022")
                        }
                        
                        CustomButton(
                            text: "Letter from 18th August", number: "8 - "
                        ) {
                            pathFinder(path: "Letter from 18th August")
                        }
                        
                        CustomButton(
                            text: "Blah - Third Anniversary", number: "9 - "
                        ) {
                            pathFinder(path: "Blah - Third Anniversary")
                        }
                        
                    }.quickLookPreview($url)
                }
                .listStyle(.grouped)
                .listRowBackground(Color.clear)
            }
        }
    }
    
    func pathFinder(path: String) {
        url = Bundle.main.url(forResource: path, withExtension: "pdf")
    }
}

struct YouView_Previews: PreviewProvider {
    static var previews: some View {
        YouView()
    }
}

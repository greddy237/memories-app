//
//  MeView.swift
//  UsApp
//
//  Created by Gowtham on 9/21/23.
//

import SwiftUI
import QuickLook


struct MeView: View {
    @State var userGuideUrl: URL?
    @State var url: URL?
    var body: some View {
            ZStack {
                Image("Image9").resizable().ignoresSafeArea()
                VStack {
                    Text("Letters  |   Me").font(Font.custom("Merienda-Regular", size: 37)).foregroundColor(Color.white)
                    ScrollView {
                        Group {
                            CustomButton(
                                text: "Birthday Present Jan 2021", number: "1 - "
                            ) {
                                pathFinder(path: "Birthday Present 2021 - Me")
                            }
                            
                            CustomButton(
                                text: "Anniversary Letter 2022", number: "2 - "
                            ) {
                                pathFinder(path: "Anniversary Letter 2022 - Me")
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

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}

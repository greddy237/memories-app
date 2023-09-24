//
//  ContentView.swift
//  UsApp
//
//  Created by Gowtham on 9/20/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("Image2")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack (spacing: 60) {
                    Text("Memories App").font(Font.custom("GreatVibes-Regular", size: 40))
                        .foregroundColor(Color.white)
                    HStack {
                        VStack {
                            Image("MeImage")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150.0, height: 150.0)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color(uiColor: UIColor(red: 0.18, green: 0.24, blue: 0.27, alpha: 1.00)), lineWidth: 0)
                                )
                                .padding(.all)
                            RoundedRectangle(cornerRadius: 25)
                                .frame(height: 50)
                                
                                .blendMode(.destinationOut)
                                .border(Color.white, width: 2)
                                .overlay(
                                    NavigationLink(destination: MeView()) {
                                    Text("Letters  |   Me")
                                        .foregroundColor(Color.white)
                                        .padding()
                                        .cornerRadius(16)
                                        .font(Font.custom("Merienda-Regular", size: 16))
                                        .bold()
                                    
                                }).padding()
                            
                        }.compositingGroup()
                        Spacer()
                        VStack {
                            Image("LipikaImage")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150.0, height: 150.0)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color(uiColor: UIColor(red: 0.18, green: 0.24, blue: 0.27, alpha: 1.00)), lineWidth: 0)
                                )
                                .padding(.all)
                            RoundedRectangle(cornerRadius: 25)
                                .blendMode(.destinationOut)
                                .frame(height: 50)
                                .border(Color.white, width: 2)
                                .overlay(NavigationLink(destination: YouView()) {
                                    Text("Letters  |   You")

                                        .foregroundColor(Color.white)
                                        .padding()
                                        .cornerRadius(16)
                                        .font(Font.custom("Merienda-Regular", size: 16))
                                        .bold()
                                    
                                }).padding()
                        }.compositingGroup()
                    }
                }
            }
        }.accentColor(.white)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

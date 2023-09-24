//
//  SplashScreen.swift
//  UsApp
//
//  Created by Gowtham on 9/22/23.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var title: String = "Memories App"
    @State var animateTitle: String = ""
    @State var indexValue = 0
    @State var timeInterval: TimeInterval = 0.20
    
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Image("Image2").resizable().ignoresSafeArea()
                Text(animateTitle)
                    .font(Font.custom("GreatVibes-Regular", size: 60))
                    .foregroundColor(Color.white)
                    .onAppear{
                        startAnimation()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                                            withAnimation {
                                                self.isActive = true
                                            }
                                        }
                    }
            }
        }
    }
    func startAnimation() {
        Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: true){
            timer in
            if indexValue < title.count {
                animateTitle += String(title[title.index(title.startIndex, offsetBy: indexValue)])
                
                indexValue += 1
            } else {
                timer.invalidate()
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}

//
//  SplashScreenView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 02/05/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("WOW")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Text("Welcome to the Clinic")
                        .font(Font.custom("BODONI 72 SMALLCAPS", size: 20))
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                    withAnimation {
                        self.isActive = true
                    }

                }
            }
        }
        
       
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

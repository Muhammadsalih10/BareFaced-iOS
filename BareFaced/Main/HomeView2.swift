//
//  SwiftUIView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 01/05/2022.
//

import SwiftUI

struct HomeView2: View {
    var body: some View {
        ZStack() {
            VStack(spacing: 20){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)

            // MARK: - HEADER
            
                Spacer()
                
                Image("HOME Large 2")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 500 )
                    

            // MARK: - CENTER
            
            
                
            // MARK: - FOOTER
                
                Spacer()
                
            } //: ZSTACK
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView2()
    }
}

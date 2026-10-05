//
//  Home2Card.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 01/05/2022.
//

import SwiftUI

struct Home2Card: View {
    var Home: Home2
    
    var body: some View {
        NavigationView {
            VStack {
        
        AsyncImage(url: URL(string: Home.image)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom) {
                    
                
                    }
                    
                } placeholder: {
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
        .frame(width: 360, height: 642, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
            }
    }
        }
    
}
    
struct Home2Card_Previews: PreviewProvider {
    static var previews: some View {
        Home2Card(Home: Home2.all[0])
    }
}
    

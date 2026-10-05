//
//  AboutCard.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 17/04/2022.
//

import SwiftUI

struct AboutCard: View {
    var about: about
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: about.Image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(about.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 8, y: 0)
                            .frame(maxWidth: 1)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom) {
                        Text(about.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 8, y: 0)
                            .frame(maxWidth: 1)
                            .padding()
                    }
                
            }
        }
        .frame(width: 140, height: 140, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
    
}
        

struct AboutCard_Previews: PreviewProvider {
    static var previews: some View {
        AboutCard(about: about.all[0])
    }
}

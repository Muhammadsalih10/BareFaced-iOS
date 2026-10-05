//
//  ReviewView2.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 19/04/2022.
//

import SwiftUI

struct ReviewView2: View {
    var Reviews: Reviews
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: Reviews.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 300, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(width: 380, height: 550)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
        }
    }
}

struct ReviewView2_Previews: PreviewProvider {
    static var previews: some View {
        ReviewView2(Reviews: Reviews.all[0])
    }
}

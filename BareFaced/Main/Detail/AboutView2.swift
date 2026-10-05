//
//  AboutView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 18/04/2022.
//

import SwiftUI

struct AboutView2: View {
    var About: about
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: About.Image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            }
            
        }
    }
}

struct AboutView2_Previews: PreviewProvider {
    static var previews: some View {
        AboutView2(About: about.all[0])
    }
}

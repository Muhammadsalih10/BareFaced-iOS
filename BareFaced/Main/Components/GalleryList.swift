//
//  GalleryList.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 16/04/2022.
//

import SwiftUI

struct GalleryList: View {
    var gallery: [gallery]
    
    var body: some View {
        VStack {
            HStack {
                Text("gallery")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(gallery) { gallery in
                    GalleryCard(gallery: gallery)
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct GalleryList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            GalleryList(gallery: gallery.all)
            
        }
    }
}

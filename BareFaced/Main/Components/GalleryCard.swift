//
//  GalleryCard.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 16/04/2022.
//

import SwiftUI

struct GalleryCard: View {
    var gallery: gallery

    var body: some View {
        VStack {
            Image(gallery.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom) {
                    Text(gallery.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3, x: 0, y: 0)
                        .frame(maxWidth: 136)
                        .padding()
                }
        }
        .frame(width: 150, height: 200, alignment: .top)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(.gray).opacity(0.3),
                    Color(.gray)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .clipShape(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
        )
        .shadow(
            color: Color.black.opacity(0.3),
            radius: 15,
            x: 0,
            y: 10
        )
    }
}

struct GalleryCard_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCard(gallery: gallery.all[0])
    }
}

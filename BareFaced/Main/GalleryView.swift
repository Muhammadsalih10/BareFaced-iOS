//
//  GalleryView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                GalleryList(gallery: gallery.all)
            } //: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
            .navigationTitle("Gallery")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}

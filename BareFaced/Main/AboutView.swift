//
//  AboutView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                AboutList(about: about.all)
            }//: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
            .navigationTitle("About")
        }
        .navigationViewStyle(.stack)
    }
}

struct aboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

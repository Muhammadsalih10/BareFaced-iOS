//
//  ReviewsView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct ReviewsView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ReviewsList(Reviews: Reviews.all)
            } //: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
            .navigationTitle("Reviews")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct ReviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ReviewsView()
    }
}

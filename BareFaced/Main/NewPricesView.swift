//
//  PricesView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct PricesView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                PricesList(prices: Prices.all)
            } //: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
            .navigationTitle("Prices")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct PricesView_Previews: PreviewProvider {
    static var previews: some View {
        PricesView()
    }
}

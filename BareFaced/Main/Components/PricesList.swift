//
//  PricesList.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 14/04/2022.
//

import SwiftUI

struct PricesList: View {
    var prices: [Prices]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(prices.count) \(prices.count > 1 ? "prices" : "price")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(prices) { Prices in
                    NavigationLink(destination: pricesView(Prices: Prices)) {
                        PricesCard(prices: Prices)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct PricesList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            PricesList(prices: Prices.all)
        }
    }
}

//
//  PricesCard.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 14/04/2022.
//
import SwiftUI

struct PricesCard: View {
    var prices: Prices

    var body: some View {
        VStack {
            Image(prices.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(alignment: .bottom) {
                    Text(prices.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 3, x: 0, y: 0)
                        .frame(maxWidth: 136)
                        .padding()
                }
        }
        .frame(width: 160, height: 217, alignment: .top)
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
struct PricesCard_Previews: PreviewProvider {
    static var previews: some View {
        PricesCard(prices: Prices.all[0])
    }
}

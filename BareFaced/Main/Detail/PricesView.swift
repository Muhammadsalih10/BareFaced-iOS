//
//  PricesView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 14/04/2022.
//
import SwiftUI

struct pricesView: View {
    
    var Prices: Prices

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            AsyncImage(url: URL(string: Prices.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(Prices.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    if !Prices.description.isEmpty {
                        Text(Prices.description)
                       
                        
                        }
                
                        
                               
            }
            .padding(.horizontal)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
        }//: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
        .ignoresSafeArea(.container, edges: .top)
}
}
struct pricesView_Previews: PreviewProvider {
    static var previews: some View {
        pricesView(Prices: Prices.all[0])
    }
}

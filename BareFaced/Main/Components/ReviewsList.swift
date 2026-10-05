//
//  ReviewsList.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 19/04/2022.
//

import SwiftUI

struct ReviewsList: View {
    var Reviews: [Reviews]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Reviews.count) \(Reviews.count > 1 ? "Reviews" : "Reviews")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(Reviews) { Reviews in
                    NavigationLink(destination: ReviewView2(Reviews: Reviews)) {
                        ReviewCard(Reviews: Reviews)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct ReviewsList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ReviewsList(Reviews: Reviews.all)
            
        }
    }
}

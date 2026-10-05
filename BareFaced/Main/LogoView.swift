 //
//  LogoView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 02/05/2022.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Bare".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("WOW")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120, alignment: .center)
            
            Text("Faced".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //: HSTACK
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

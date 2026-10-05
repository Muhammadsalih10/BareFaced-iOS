//
//  T&C'sView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct T_C_sView: View {
    var body: some View {
        NavigationView {
            Text("T&C's")
                .navigationTitle("T&C's")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct T_C_sView_Previews: PreviewProvider {
    static var previews: some View {
        T_C_sView()
    }
}

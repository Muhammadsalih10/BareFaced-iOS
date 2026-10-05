//
//  TreatmentsView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct TreatmentsView: View {
    var body: some View {
        NavigationView {
            List(Treatment.all) { treatment in
                Text(treatment.name)
                    .navigationTitle("Treatments")
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct TreatmentsView_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentsView()
    }
}

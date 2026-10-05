//
//  TreatmentView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 18/04/2022.
//

import SwiftUI

struct TreatmentView: View {
    var Treatment: Treatment
    
    var body: some View {
        ScrollView{
            Text("frfr")
            
        }
        
        }
    }

struct TreatmentView_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentView(Treatment: Treatment.all[0 ])
    }
}

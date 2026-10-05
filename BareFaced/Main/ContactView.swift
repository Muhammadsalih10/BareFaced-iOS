//
//  ContactView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//
import SwiftUI
import MapKit


struct ContactView: View {
    
    @State private var FirstName = ""
    @State private var LastName = ""
    @State private var Phone = ""
    @State private var Email = ""
    @State private var Message = ""
    @State var submit = false
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 50.71967467806234, longitude: -1.8761813436151917), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
    
    var body: some View {
            NavigationView {
                ZStack(alignment: .bottom) {
                    ScrollView(.vertical, showsIndicators: false) {
                }
                Form {
                    Section(header: Text("BareFaced Clinic")) {
                    TextField("First Name", text: $FirstName)
                    TextField("Last Name", text: $LastName)
                    TextField("Phone", text: $Phone)
                    TextField("Email", text: $Email)
                            .textFieldStyle(.roundedBorder)
                        Section(header: Text("Message")) {
                            TextField("Your message", text: $Message)
                            
                            Button(action: {submit.toggle() }) {
                                Text("Submit")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(height: 40)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
                                
                                Spacer()
                            }
                        }
                        Label("5-7 Westover road Bournemouth BH1 2BY", systemImage: "mappin.and.ellipse")
                        Label("07532708242", systemImage: "phone.fill")
                        Label("chelsea@barefacedclinic.co.uk", systemImage: "envelope.fill")
                        Link("Terms of Service", destination: URL(string: "https://www.barefacedclinic.co.uk/newpage")!)
                        ZStack {
                            Map(coordinateRegion: $mapRegion)
                                .ignoresSafeArea()
                            

                            }
                            .frame(width: 320, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                        
                        }
                    
                    }
                    .offset( y: -100)
                
                }//: SCROLL
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(MotionAnimationView())
                .navigationTitle("")
                
                
            
            
            }
            
        }
    
    }
        
        



struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}

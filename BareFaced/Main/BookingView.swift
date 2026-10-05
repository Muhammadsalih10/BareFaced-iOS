//
//  BookingView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 20/04/2022.
//

import SwiftUI

struct BookingView: View {
    
    @State private var birthdate = Date()
    @State var selection = 1
    @State private var FirstName = ""
    @State private var LastName = ""
    @State private var Phone = ""
    @State private var showConfirmation = false
    @State private var showError = false
    func saveBooking() {
        let newBooking = Booking(
            firstName: FirstName,
            lastName: LastName,
            phone: Phone,
            treatment: selection,
            appointmentDate: birthdate
        )

        var bookings: [Booking] = []

        if let savedData = UserDefaults.standard.data(forKey: "savedBookings"),
           let decodedBookings = try? JSONDecoder().decode([Booking].self, from: savedData) {
            bookings = decodedBookings
        }

        bookings.append(newBooking)

        if let updatedData = try? JSONEncoder().encode(bookings) {
            UserDefaults.standard.set(updatedData, forKey: "savedBookings")
        }
    }

        var body: some View {
        NavigationView {
            
            ScrollView(.vertical, showsIndicators: false){
                DatePicker( "Birthdate", selection: $birthdate, in: Date()...)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                Picker(selection: $selection, label: Text("Choose your treatment")) {
                    Text("PhiBrows Microblading") .tag(1)
                    Text("PhiBrows Top Ups") .tag(2)
                    Text("Eyelash Lift & Tint") .tag(3)
                    Text("Dermaplane") .tag(4)
                    Text("Luxury Dermaplane") .tag(5)
                    Text("Glow Package") .tag(6)
                    Text("Radiance Revival Package") .tag(7)
                    Text("Chemical Peel") .tag(8)
                    Text("Microneedling") .tag(9)
                    Text("Hair Restoration") .tag(10)
                    
                }
                TextField("First Name", text: $FirstName)
                TextField("Last Name", text: $LastName)
                TextField("Number", text: $Phone)
                
                Button(action: {
                    if FirstName.isEmpty || LastName.isEmpty || Phone.isEmpty {
                        showError = true
                    } else {
                        saveBooking()
                        showConfirmation = true
                    }
                }, label: {
                    Text("BOOK")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.gray)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
                    
                })
                .alert("Booking Received", isPresented: $showConfirmation) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("Thank you \(FirstName). Your appointment request has been received.")
                }

                .alert("Missing Information", isPresented: $showError) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text("Please enter your first name, last name and phone number.")
                }

                .padding(40)
            } //: SCROLL
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
            .navigationTitle("Book an Appointment")
        }
        
    }
}


struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}


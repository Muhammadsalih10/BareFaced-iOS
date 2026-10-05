//
//  MyBookingView.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 03/10/2026.
//

import SwiftUI

struct MyBookingView: View {
    
    @State private var bookings: [Booking] = []
    var body: some View {
        
        VStack(spacing: 20) {

            if bookings.isEmpty {

                Text("No bookings saved")

            } else {

                Text("My Bookings")
                    .font(.largeTitle)
                    .bold()

                ForEach(bookings.indices, id: \.self) { index in

                    let booking = bookings[index]

                    VStack(alignment: .leading, spacing: 12) {

                        Text(treatmentName(for: booking.treatment))
                            .font(.headline)
                            .bold()

                        Text("\(booking.firstName) \(booking.lastName)")
                            .font(.subheadline)

                        Text("Phone: \(booking.phone)")
                            .font(.subheadline)

                        Text(booking.appointmentDate.formatted(
                            date: .abbreviated,
                            time: .shortened
                        ))
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                        Button("Cancel Booking") {
                            deleteBooking(at: index)
                        }
                        .font(.subheadline)
                        .foregroundColor(.red)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 14)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.red, lineWidth: 1)
                        )
                        .padding(.top, 6)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(16)
                    .shadow(radius: 4)
                    .padding(.horizontal)
                }
            }
       
        }
        .padding()
        .onAppear() {
            loadBookings()
        }
    }
    
    func loadBookings() {
        if let savedData = UserDefaults.standard.data(forKey: "savedBookings"),
           let decodedBookings = try? JSONDecoder().decode([Booking].self, from: savedData) {

            bookings = decodedBookings
        }
    }
    
    func deleteBooking(at index: Int) {
        bookings.remove(at: index)

        if let updatedData = try? JSONEncoder().encode(bookings) {
            UserDefaults.standard.set(updatedData, forKey: "savedBookings")
        }
    }
    func treatmentName(for id: Int) -> String {
        switch id {
        case 1:
            return "PhiBrows Microblading"
        case 2:
            return "PhiBrows Top Ups"
        case 3:
            return "Eyelash Lift & Tint"
        case 4:
            return "Dermaplane"
        case 5:
            return "Luxury Dermaplane"
        case 6:
            return "Glow Package"
        case 7:
            return "Radiance Revival Package"
        case 8:
            return "Chemical Peel"
        case 9:
            return "Microneedling"
        case 10:
            return "Hair Restoration"
        default:
            return "Unknown Treatment"
        }
    }
}

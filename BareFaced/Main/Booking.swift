//
//  Booking.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 03/10/2026.
//

import Foundation

struct Booking: Codable {
    let firstName: String
    let lastName: String
    let phone: String
    let treatment: Int
    let appointmentDate: Date
}

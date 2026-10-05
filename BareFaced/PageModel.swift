//
//  PageModel.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 03/05/2022.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var samplePage = Page(name: "Million Dollar Facial", description: "The right one for you will depend on your skin type, natural hair growth amount and taste.", imageUrl: "million", tag: 0)
    
    static var samplePages: [Page] = [
        Page(name: "Million Dollar Facial", description: "The right one for you will depend on your skin type, natural hair growth amount and taste.", imageUrl: "million", tag: 0),
        Page(name: "The Perfect Brow", description: "Your Eyebrows are 90% of your SELFIE.", imageUrl: "brows Small", tag: 1),
        Page(name: "Click and Book", description: "Choose your treatment, Book the appointment and trust the process", imageUrl: "iphone-mockup", tag: 2)
    
    ]
}

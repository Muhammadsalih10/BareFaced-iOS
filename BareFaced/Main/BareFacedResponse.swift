//
//  BareFacedResponse.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 03/05/2022.
//

import Foundation

func getBareFacedResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("hello") {
        return "Hey there!"
    } else if tempMessage.contains("goodbye") {
        return "Talk to you later!"
    } else if tempMessage.contains("how are you") {
        return "I'm fine, how about you?"
    } else {
        return "That's cool."
    }
}

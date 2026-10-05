//
//  GalleryModel.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 15/04/2022.
//

import Foundation

enum category: String {
    case PhiBrowsMicroblading =  "PhiBrows Microblading"
    case PhiBrowsTopUps = "PhiBrows Top Ups"
    case EyelashLiftandTint = "Eyelash Lift & Tint"
    case Dermaplane = "Dermaplane"
    case LuxuryDermaplane = "Luxury Dermaplane"
    case GlowPackage = "Glow Package"
    case RadianceRevivalPackage = "Radiance Revival Package"
    case ChemicalPeel = "Chemical Peel"
    case Microneedling = "Microneedling"
    case HairRestoration = "Hair Restoration"
    
}

struct gallery: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

extension gallery {

    static let all: [gallery] = [

        gallery(
            name: "",
            image: "gallery1"
        ),

        gallery(
            name: "",
            image: "gallery2"
        ),

        gallery(
            name: "",
            image: "gallery3"
        ),

        gallery(
            name: "",
            image: "gallery4"
        ),

        gallery(
            name: "",
            image: "gallery5"
        ),

        gallery(
            name: "",
            image: "gallery6"
        ),

        gallery(
            name: "",
            image: "gallery7"
        ),

        gallery(
            name: "",
            image: "gallery8"
        )
    ]
}

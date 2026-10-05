//
//  AboutModel.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 17/04/2022.
//

import Foundation

enum name: String {
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
    
struct about: Identifiable {
    let id = UUID()
    let name: String
    let Image: String
}

extension about{
    static let all: [about] = [
        about(
            name: "1",
            Image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9902-1920w.JPG?Expires=1652000228&Signature=PZWRwC0GOvPd3oW-ruSiMQ6SpazI7OQ9D5hokGAP8sfXTnDxfmtjbFLO8KpQ5L3ZavapBuv91CSfIRQQWkb0xo1V5hBtr6Da~O0WiAjs~mIZ087EMOvXg2EmZNYKjfyqF1GbMppcaQqmkVseOvGJOcfYnZyi8zM3ieeo0bnUaUEpgQ-0glJMUcva6ipBwiANvzEPpkoawQEn1q7uAObbv3sSgBNGUD6TaubC7PL4eal8qK0oivgpKovkdo-vRiE8qmF0c~749JQSczPx7zbPVtJNPeZtxnyBR2sbQplqdEpsjvvAl1PNiVIF5XCVSR7Mjuj4uLo~D074MKcIQcKIDg__&Key-Pair-Id=K2NXBXLF010TJW"
        ),
        about(
            name: "1",          Image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9900-1920w.JPG?Expires=1652000228&Signature=GpN8YG24OS-uQZNSHJU7GQgXgYekXLUO-o3iVRi40e0PYJGFtZA6B5Rxa-5pd1UKdvEJbeq613X-jf4kTbgLdS3F1vfJlfGx-wzhL0tnOqsvarXbqWui-aCkHcgUeocM7xzPwZrw0uK26vUoLfSwgz~0S2efEoCEccUmNrki54FWhqZoMyCAUNhqeutxz~f91Q1qFzI6GKytm8G~9T~cWRxQSSNSLDv0HnUMn6RW1xwDWVLT4129BsMrPmXNW1imWvMIAB9LuY-H9IwsOPtchALi2-jcO7T8aSEZ6yGQWn8-nRxsHQw1TpCegAvCpUk7baNWOw9Nr1FYfTAOkwadpg__&Key-Pair-Id=K2NXBXLF010TJW"
        ),
        about(
            name: "1",            Image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9896-1920w.JPG?Expires=1652000228&Signature=KqyOZTPYFdQA~sewPpPGtf59fvmfnAcpRDaXIJUrMSjMTacnNnJFFwg4QNgPmKK9bBJs53Mfax80~aw0O2RpW2U~~aQK~hUXECXIIkqV-76ObVCSWYDX55mGkM0mI304O0VfcqSCKY2RHnM8Y4XHXXFtaN42~o3xuRuLrt6lDmhx9D5zD24dN2jnq7QQt-jMTklWD5ALic91yA5kZnoNsvLOsQsFDw-Xm8RqyvG04KCRxXVlWSyN1FkE5HwUtoYmDxFUd--OKTN-Cc0QK8YXoas7xepViPlNQqqHvCCHo9jZhRqR4Ydk2xg9Xmkd7dynHA0ThvL7TfPIiMyZjPgdXw__&Key-Pair-Id=K2NXBXLF010TJW"
        ),
        about(
            name: "1",           Image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9898-1920w.JPG?Expires=1652000228&Signature=Aznw5156UK8UnCsGy6jQYnXdtpeCa23Yn9r4xyyE75W3g~CYKB3zfDXI9tOyBoK3WONtX~IkKZu7bQuIqcCufuv~6Eg8QcC-AD7MtE~aEpGc3sLzWuyGcCxtpXmkib5wcG4IhzS8EotCrJb2YWgzCNvQ5n893sdtMvPP9nIB7Knh299kUJPWwdGsE6iPKaT61~99RiUYNd5cAWEup3mNZJHaTOHARAZQqXQFgoOloLJYJc-baY3a5bYux9rt~bsOdpIAOIGfg45vfKe7yJDjiUGAD08WL6kckMPj-~fUigt6gEsi7b8Ul7DOW1iDEBBDxk1kGBjem2oPzoXFCcVLsw__&Key-Pair-Id=K2NXBXLF010TJW"
        ),
        about(
            name: "1",            Image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9899-1920w.JPG?Expires=1652000228&Signature=AVVOZsHV6N1qvLc4O5TefuubWuEODScmeXceVDUMcyLR7bjxnLak5qKlF552J6PObLEhfVxsx1dX4IpG0K~IngRTlzygQppww21kxNia76CGtZ8claJhccoxE-Kv4Uuo6WvBAT3dFX67g5f46vp2xbM--DtRPSXrdCdVg3WmraUN0~eFjiMidqb04pWKykstIXWvNV93GeobdQkGQ5UMNKQ2sjqcdJmwjz-Kn3txmIQlZiXQRIczx-k7Mt0bUMOiiAsoeQveieddaKG524ujwm1rYlLkJKEhn3wlmXoJjFnmQnIh-Og-dVN5dpEUuHbLpH7PyBMW~FzZGHqOESpecg__&Key-Pair-Id=K2NXBXLF010TJW"
        ),
        about(
            name: "1",            Image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9893-1920w.JPG?Expires=1652000228&Signature=fJ0lI9lr6o7xyL9bzbDzxUHwa6u37E9RfckZJiWOeTRhdEHAscs8fIDdPrQ0cAXtDC8KzoY48VPTGe51Vt6q6GP7R9ysoTqDD4eUPlxfldUPu9m-PsExOh6h4TzR07l4SaY4QAj4nP5xJrX59x2NJTdOXgGXHWu3Mea6aev4Pg95xWN2oJfZJtwgmmK4l~0zwiKuCeMf2qU7o2v4IXN6cPt-GpR6~TXAY1LxAm4XgCeohWX9yF-UG4YZDWKa7cmJLLBCtGJQJ21IT0kgs~VsuURViCJ6BuuuNxvjrvMY1wDBCOq45D6i9HrdHHsDAi2cC33JRzW05wIluPkUQQcSIA__&Key-Pair-Id=K2NXBXLF010TJW"
        )
        ]
    
}

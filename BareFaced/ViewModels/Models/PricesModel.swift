//
//  PricesModel.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import Foundation

enum Category: String {
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
    
    struct Prices: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let category: category.RawValue
    let datePublished: String
    let url: String
}

extension Prices {
    static let all: [Prices] = [
        Prices(
            name: "PhiBrows Microblading £250",
            image: "microblading",
            description: "Microblading is the manual skill of eyebrow drawing using a disposable hand held tool & pigment, to create semi-permanent, hyper-realistic results. In comparison with classic SPMU (semi-permanent makeup) which uses a machine, microblading makes it possible to draw thinner & more realistic hair strokes. PhiBrows were created by PhiAcademy to top the microblading game! PhiBrows Artists attend a rigorous 2-day live training course, followed by 6 months study & practice at home. They have 12 levels to pass which cover facial morphology, eyebrow mapping & shaping, pigment selection, practice on latex, then eventually practice on live models & a theory exam. PhiBrows students only qualify as Artists once their work is perfect.",
            category: "PhiBrows Microblading",
            datePublished: "2022-01-05",
            url: "https://www.barefacedclinic.co.uk/pricesa0a474cf"
        ),
        Prices(
            name: "PhiBrows Top Ups - Up to 10months: £50, 10-15months: £100, 15-20months: £150",
            image: "topUps",
            description: "Microblading Top Ups are usually requested after 1-2 years of first treatment, however longevity of the pigment will depend on your skin type & other factors such as lifestyle/uv exposure etc. We offer correctional work if you would like us to correct/top up someone else's work, however, price would be on a case-by-case basis.",
            category: "PhiBrows Top Ups",
            datePublished: "2022-01-06",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=1"
        ),
        Prices(
            name: "Eyelash Lift & Tint £35",
            image: "eyelashLift",
            description: "An Eyelash lift & tint is a very popular treatment that uplifts your natural lashes, making them look longer & more curled. A tint is then applied which defines your lashes, resulting in a finished look where your eyes appear larger and lashes look longer & fuller. After trying many different brands, we now use Elleebana products which allow the results to last up to 12 weeks after a single session!",
            category: "Eyelash Lift & Tint",
            datePublished: "2022-01-07",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=17"
        ),
        Prices(
            name: "Dermaplane £35",
            image: "dermaplane",
            description: "Dermaplaning provides an effective & safe exfoliant treatment that removes vellus hair, promotes deeper product penetration & gives an immediate smoother, more radiant complexion.",
            category: "Dermaplane",
            datePublished: "2022-01-09",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=32"
        ),
        Prices(
            name: "Luxury Dermaplane £50",
            image: "luxuryDermaplane",
            description: "Our Luxury Dermaplane combines our regular Dermaplane treatment with an extra exfoliant peel & hydration mask - giving you even softer, smoother skin.This treatment is perfect for expectant or post-partum mums as it gives them a beautiful glow (& pamper), as during these times they are not allowed the more invasive treatments such as Chemical Peels/Microneedling.",
            category: "Luxury Dermaplane",
            datePublished: "2022-01-06",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=23"
        ),

        Prices(
            name: "Glow Package £110",
            image: "glowPackage",
            description: "The perfect facial for glowing skin! Our Glow Package includes a deep cleanse, extraction, Dermaplane, enzyme peel, Clinicare Glow Chemical Peel, tone, soothing luxury face mask, Glow serum, hydrating moisturiser & SPF. The Dermaplane & enzyme peel provide a double exfoliation of the skin, allowing for deeper absorbtion of our luminising Glow Products.",
            category: "Glow Package",
            datePublished: "2022-01-05",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=11"
        ),
        Prices(
            name: "Radiance Revival Package £125",
            image: "radianceRevival",
            description: "The ULTIMATE facial to achieve optimum results! Luxury Dermaplaning & Microneedling combined will give the most desirable outcome. Ideal for treating uneven skin tone & texture, large pores, fine lines, hydration levels, acne-scarring & lots more. Luxury products used include mesotherapy & serum tailored to your skin concerns & a luxury mask containing EGF (Epidermal Growth Factor) which helps skin stem cells absorb nutrients, speeds up cell metabolism & stimulates the synthesis of Hyaluronic acid - allowing skin to retain water & therefore look more plump.",
            category: "Radiance Revival Package",
            datePublished: "2022-02-06",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=26"
        ),
        Prices(
            name: "Chemical Peel £70",
            image: "chemicalPeel",
            description: "Professional use-only, Clinicare Chemical Peels are used here at BareFaced Clinic, to improve and smooth the texture of skin.",
            category: "Chemical Peel",
            datePublished: "2022-02-08",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=25"
        ),
        Prices(
            name: "Microneedling £85",
            image: "microneedling",
            description: "Microneedling is an effective, non-surgical skin rejuvenation treatment...",
            category: "Microneedling",
            datePublished: "2022-01-10",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=9"
        ),
        Prices(
            name: "Hair Restoration from £80",
            image: "HairRestoration",
            description: "Our Hair Restoration treatment stimulates cell turnover...",
            category: "Hair Restoration",
            datePublished: "2022-01-11",
            url: "https://www.barefacedclinic.co.uk/gallery#&gid=1577129481&pid=97"
        )
            ]
}

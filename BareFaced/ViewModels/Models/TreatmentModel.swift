//
//  TreatmentModel.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 18/04/2022.
//

import Foundation

enum Name: String {
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

struct Treatment: Identifiable {
    let id = UUID()
    let name: String
    let description: String
}

extension Treatment {
    static let all: [Treatment] = [
                Treatment(
                    name: "PhiBrows Microblading",
                    description: "Microblading is the manual skill of eyebrow drawing using a disposable hand held tool & pigment, to create semi-permanent, hyper-realistic results. In comparison with classic SPMU (semi-permanent makeup) which uses a machine, microblading makes it possible to draw thinner & more realistic hair strokes. PhiBrows were created by PhiAcademy to top the microblading game! PhiBrows Artists attend a rigorous 2-day live training course, followed by 6 months study & practice at home. They have 12 levels to pass which cover facial morphology, eyebrow mapping & shaping, pigment selection, practice on latex, then eventually practice on live models & a theory exam. PhiBrows students only qualify as Artists once their work is perfect."
            ),
                Treatment(
                    name: "PhiBrows Top Ups",
                    description: "Microblading Top Ups are usually requested after 1-2 years of first treatment, however longevity of the pigment will depend on your skin type & other factors such as lifestyle/uv exposure etc. We offer correctional work if you would like us to correct/top up someone else's work, however, price would be on a case-by-case basis."
            ),
                Treatment(
                    name: "Eyelash Lift & Tint",
                    description: "An Eyelash lift & tint is a very popular treatment that uplifts your natural lashes, making them look longer & more curled. A tint is then applied which defines your lashes, resulting in a finished look where your eyes appear larger and lashes look longer & fuller. After trying many different brands, we now use Elleebana products which allow the results to last up to 12 weeks after a single session!"
            ),
                Treatment(
                    name: "Dermaplane",
                    description: "Dermaplaning provides an effective & safe exfoliant treatment that removes vellus hair, promotes deeper product penetration & gives an immediate smoother, more radiant complexion."
            ),
                Treatment(
                    name: "Luxury Dermaplane",
                    description: "Our Luxury Dermaplane combines our regular Dermaplane treatment with an extra exfoliant peel & hydration mask - giving you even softer, smoother skin. This treatment is perfect for expectant or post-partum mums as it gives them a beautiful glow (& pamper), as during these times they are not allowed the more invasive treatments such as Chemical Peels/Microneedling."
            ),
                Treatment(
                    name: "Glow Package",
                    description: "The perfect facial for glowing skin! Our Glow Package includes a deep cleanse, extraction, Dermaplane, enzyme peel, Clinicare Glow Chemical Peel, tone, soothing luxury face mask, Glow serum, hydrating moisturiser & SPF. The Dermaplane & enzyme peel provide a double exfoliation of the skin, allowing for deeper absorbtion of our luminising Glow Products."
            ),
                Treatment(
                    name: "Radiance Revival Package",
                    description: "The ULTIMATE facial to achieve optimum results! Luxury Dermaplaning & Microneedling combined will give the most desirable outcome. Ideal for treating uneven skin tone & texture, large pores, fine lines, hydration levels, acne-scarring & lots more. Luxury products used include mesotherapy & serum tailored to your skin concerns & a luxury mask containing EGF (Epidermal Growth Factor) which helps skin stem cells absorb nutrients, speeds up cell metabolism & stimulates the synthesis of Hyaluronic acid - allowing skin to retain water & therefore look more plump."
            ),
                Treatment(
                    name: "Chemical Peel",
                    description: "Professional use-only, Clinicare Chemical Peels are used here at BareFaced Clinic, to improve & smooth the texture of skin. Chemical Peels encourage skin cell regeneration & unveil a fresh, even & luminous complexion. Perfect for treating acne, fine lines, hyperpigmentation, age spots & sensitive skin."
            ),
                Treatment(
                    name: "Microneedling",
                    description: "Microneedling is an effective, non-surgical skin rejuvenation treatment which targets various skin imperfections & restores the healthy youful appearance of skin by stimulating the natural production of collagen & elastin.This treatment hydrates, firms, tightens & rejuvenates skin. Microneedling can benefit clients with acne scarring, hyperpigmentation, reduced skin elasticity, sun damage, scars & stretch marks."
            ),
                Treatment(
                    name: "Hair Restoration",
                    description: "Our Hair Restoration treatment stimulates cell turnover & improves scalp circulation which provides an optimum environment for hair growth. The mesotherapy cocktail we use has a unique combination of active ingredients specially designed to maintain scalp vitality & act on follicle dysfunctions in order to achieve anti-hair loss results & improve hair quality. This treatment is perfect for clients who suffer from hormonal or hereditary hair loss, slow hair growth & tired/dehydrated hair."
            )
        ]
}

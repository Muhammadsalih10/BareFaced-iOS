//
//  AboutList.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 17/04/2022.
//

import SwiftUI

struct AboutList: View {
    var about: [about]
    
    var body: some View {
        VStack {
            HStack {
            Text( "The Most Beautiful Thing You Can Wear Is Confidence")
                .font(.largeTitle)
                .fontWeight(.medium)
                .opacity(0.7)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
            ForEach(about) { about in
                    AboutCard(about: about)
                }
            }
            .padding(.top)
            
        
        }
        .padding(.horizontal)
        
        VStack(spacing:60) {
            Text("At BareFaced Clinic we thrive on enhancing natural beauty as we believe everyone should feel beautiful, and most importantly comfortable & confident in their own skin. We have trained with the leading academies in our industry, to ensure we offer the most beneficial non-surgical advanced treatments, that will go above & beyond our clients' expectations.")
                .font(.body)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                
        }
        
        VStack( spacing:40) {
            Text("ABOUT CHELSEA")
                .font(.title)
                .underline()
                .multilineTextAlignment(.center)
                .padding()
            
        }
        VStack(spacing:60) {
            Text("Chelsea has worked in many different industries throughout her life, including working as a flight attendant; travel agent; pension specialist; florist & assisting fraud prevention. Chelsea has always had a love for art and obtained an A* grade in her GCSE's. After seeing the incredible work of PhiBrows Artists on social media, Chelsea decided to train with PhiAcademy in December 2018. Six months of hard work later, she gained her certificate as a PhiBrows Artist. Specialising in enhancing 'natural beauty',  Chelsea wanted to offer more advanced treatments & so started researching. Chelsea chose to train with The Confidence Clinic Training Academy as their extensive knowledge & experience in the industry made them stand out. Chelsea qualified from their Skin Specialist course in August 2020 & loves offering bespoke treatments to her clients. Chelsea strives to offer a world-class experience to her clients & is continually developing her skills to allow her to do so." )
                .font(.body)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
            
            ZStack{
                
                Image("CHE Small")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 100, alignment:.center)
                    .padding()
            }
           
        }
        
    }
    
}
    
struct AboutList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            AboutList(about: about.all)
        }
    }
}

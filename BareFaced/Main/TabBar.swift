//
//  TabBar.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 13/04/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            HomeView2()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                    Text("Home")
                }
            PricesView()
                .tabItem {
                    Label("Prices", systemImage: "tag")
                }
            
            BookingView()
                .tabItem {
                    Label("Booking", systemImage: "calendar.badge.clock")
                    Text("Booking")
                }
            
            MyBookingView()
                .tabItem {
                    Label("My Booking", systemImage: "calendar.badge.checkmark")
                }
            
            AboutView()
                .tabItem {
                    Label("About", systemImage: "person.fill")
                }
            
            ReviewsView()
                .tabItem {
                    Label("Reviews", systemImage: "rectangle.and.pencil.and.ellipsis")
                }
    
            ContactView()
                .tabItem {
                    Label("Contact", systemImage: "person.badge.plus")
                    Text("Contact")
                }
            
            GalleryView()
                .tabItem {
                    Label("Gallery", systemImage: "photo.artframe")
                }
            TreatmentsView()
                .tabItem {
                    Label("Treatments", systemImage: "facemask")
                }
                
             ChatView()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
            
                
              
            
        }
    }


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
}

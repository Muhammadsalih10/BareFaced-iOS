//
//  Home2Model.swift
//  BareFaced
//
//  Created by Muhammad  Salih  on 01/05/2022.
//

import Foundation


struct Home2: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    
}
extension Home2 {
    static let all: [Home2] = [
    Home2(
    name: "1",            image:"https://le-cdn.website-editor.net/s/d324b0b829f9487088b87762f0922151/dms3rep/multi/opt/IMG_9896-1920w.JPG?Expires=1654004871&Signature=oyf0Qoqu1WGA5jnEvFQ-ni5WuXmsgs6dMOGZ5hi1igw4SFCPNLspTT0d7m~8B048ypuKRqrJWTn5r8i8XkKMxFSxBQUafwtOIen-UIUmFsTHMVj4BeOPvhqzZ7wJnUhFEttC3HK~Ry-DU8YhWe8xNQkRCyD7nmwwmH7vuAqVICP~TOVOiGFwI9jiVwPw3J0USyrcGRwZNHbo7JUCNt6ABmsMYtRMR9nSzN8loI~7P2QXorkBoeR~gy8OckpEkatk571vrjLJdWNMrbmHVYd5y4TmXpjMCMrBArufyg9xNRTNSrIFF8Yvtdf9mczc0SzZ4LngqA3Fcn4Qk4jtMtgzhg__&Key-Pair-Id=K2NXBXLF010TJW"
)
]
}

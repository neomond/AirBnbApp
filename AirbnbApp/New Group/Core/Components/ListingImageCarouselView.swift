//
//  ListingImageCarouselView.swift
//  AirbnbApp
//
//  Created by Nazrin Atayeva on 18.07.24.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    
//    var images = [
//    "listing-1",
//    "listing-2"
//    ]
    
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) {  image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                   
            }
        }
     
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}

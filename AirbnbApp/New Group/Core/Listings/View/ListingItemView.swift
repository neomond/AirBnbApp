//
//  ListingItemView.swift
//  AirbnbApp
//
//  Created by Nazrin Atayeva on 18.07.24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
    "listing-1",
    "listing-2"
    ]
    
    var body: some View {
        VStack(spacing: 8){
            // images
           ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing details
            
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                //rating
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                } .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}

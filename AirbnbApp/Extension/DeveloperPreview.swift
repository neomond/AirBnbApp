//
//  DeveloperPreview.swift
//  AirbnbApp
//
//  Created by Nazrin Atayeva on 22.07.24.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Nazrin Atayeva",
            ownerImageUrl: "listing-2",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 800,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-2", "listing-1", "listing-2"],
            address: "124 Main St",
            city: "Miamy",
            state: "Florida",
            title: "Miamy Villa",
            rating: 4.99,
            features: [.selfChecksIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Nazrin Atayeva",
            ownerImageUrl: "listing-2",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 800,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-2", "listing-1", "listing-2"],
            address: "124 Main St",
            city: "Miamy",
            state: "Florida",
            title: "Miamy Villa",
            rating: 4.99,
            features: [.selfChecksIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Nazrin Atayeva",
            ownerImageUrl: "listing-2",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 800,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-2", "listing-1", "listing-2"],
            address: "124 Main St",
            city: "Miamy",
            state: "Florida",
            title: "Miamy Villa",
            rating: 4.99,
            features: [.selfChecksIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        )
    ]
}

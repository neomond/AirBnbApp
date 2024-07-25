//
//  ExploreService.swift
//  AirbnbApp
//
//  Created by Nazrin Atayeva on 25.07.24.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}

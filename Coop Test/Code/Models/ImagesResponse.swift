//
//  ImagesResponse.swift
//  Coop Test
//
//  Created by John Gachuhi on 23/05/2024.
//

import Foundation

// MARK: - ImagesResponseElement
struct ImagesResponseElement: Codable {
    let userID, id: Int?
    let title, body: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias ImagesResponse = [ImagesResponseElement]

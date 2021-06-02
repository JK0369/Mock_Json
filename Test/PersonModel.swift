//
//  PersonModel.swift
//  Test
//
//  Created by 김종권 on 2021/06/02.
//

import Foundation

// MARK: - PersonModel
struct PersonModel: Codable {
    let name: String
    let addressInfo: AddressInfo
    let image: String

    enum CodingKeys: String, CodingKey {
        case name
        case addressInfo = "address_info"
        case image
    }
}

// MARK: - AddressInfo
struct AddressInfo: Codable {
    let contry, city: String
}

//
//  NCard.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import Foundation

struct NCard: Identifiable, Equatable{
    let id: UUID = UUID()
    let title: String
    let text: String
    let type: NCardType
    var isFavorite: Bool = false
}

enum NCardType {
    case small
    case medium
    case large
}

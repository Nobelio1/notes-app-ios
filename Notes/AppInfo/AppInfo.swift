//
//  AppInfo.swift
//  Notes
//
//  Created by Gino Alejandro on 17/01/25.
//

import Foundation

class AppInfo: ObservableObject {
    @Published var cards: [NCard] = [
        NCard(title: "Card 1", text: "This is a small card.", type: .small, isFavorite: false),
        NCard(title: "Card 2", text: "This is a medium card.", type: .medium, isFavorite: true),
        NCard(title: "Card 3", text: "This is a large card.", type: .large, isFavorite: false),
        NCard(title: "Card 4", text: "This is another small card.", type: .small, isFavorite: true),
        NCard(title: "Card 5", text: "This is another medium card.", type: .medium, isFavorite: false),
        NCard(title: "Card 6", text: "This is another large card.", type: .large, isFavorite: false),
        NCard(title: "Card 7", text: "A different small card.", type: .small, isFavorite: true),
        NCard(title: "Card 8", text: "A different medium card.", type: .medium, isFavorite: false),
        NCard(title: "Card 9", text: "A different large card.", type: .large, isFavorite: true),
        NCard(title: "Card 10", text: "Yet another small card.", type: .small, isFavorite: false)
    ]
    
    var favorites: [NCard] {
        cards.filter { $0.isFavorite }
    }
    
    func createNote(_ card: NCard) {
        cards.append(card)
    }
 
    func toggleFavorite(card: NCard) {
            if let index = cards.firstIndex(of: card) {
                cards[index].isFavorite.toggle()
            }
        }
}

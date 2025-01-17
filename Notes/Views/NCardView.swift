//
//  NCardView.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct NCardView: View {
    
    let card: NCard
    
    var onToggleFavorite: (() -> Void)?
    
    func FavoriteButton() -> some View {
        Image(systemName: card.isFavorite ? "heart.fill" : "heart")
            .foregroundStyle(Color.red)
            .onTapGesture {
                onToggleFavorite?()
            }
    }
    
    @ViewBuilder
        func cardSmallView() -> some View {
            HStack {
                Text(card.title)
                    .font(.headline)
                    .lineLimit(2)
                    .frame(width: 120)
                    .padding(8)
                    .background(Color.cyan.opacity(0.2))
                    .cornerRadius(8)
                Text(card.text)
                    .font(.subheadline)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                FavoriteButton()
                
            }
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(16)
            .listRowSeparator(.hidden)
        }
    
    var body: some View {
        cardSmallView()
    }
}

#Preview {
    NCardView(card: NCard(title: "Hello", text: "Word", type: .small))
}

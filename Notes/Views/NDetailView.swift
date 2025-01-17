//
//  NDetailView.swift
//  Notes
//
//  Created by Gino Alejandro on 17/01/25.
//

import SwiftUI

struct NDetailView: View {
    
    @State var card: NCard
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                Text(card.title)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.leading)
                Text(card.text)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                Spacer()
            }
        }
        .background(Color.white)
        .cornerRadius(16)
        .padding()
        .background(Color.cyan.opacity(0.2))
    }
}

#Preview {
    NDetailView(
        card: NCard(title: "Titulo", text: "texto", type: .medium)
    )
}

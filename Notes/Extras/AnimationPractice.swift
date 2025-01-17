//
//  AnimationPractice.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct AnimationPractice: View {
    @State var showGreen: Bool = false

        var body: some View {
            VStack {
                // Círculo azul
                Circle()
                    .foregroundStyle(Color.cyan)
                    .frame(width: 200, height: 200)
                    .onTapGesture {
                        withAnimation {
                            showGreen.toggle()
                        }
                    }

                // Círculo verde (visible si showGreen es true)
                if showGreen {
                    Circle()
                        .foregroundStyle(Color.green)
                        .frame(width: 200, height: 200)
                        .transition(.scale)
                }
            }
        }
}

#Preview {
    AnimationPractice()
}

//
//  ProgressAnimationPractice.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct ProgressAnimationPractice: View {
    @State private var progress: Double = 0.3

        var body: some View {
            VStack {
                Text("Cargando...")
                    .font(.headline)

                // Barra de progreso
                ProgressView(value: progress)
                    .progressViewStyle(LinearProgressViewStyle())
                    .padding()

                // Botón para simular progreso
                Button("Aumentar Progreso") {
                    withAnimation {
                        progress = min(progress + 0.1, 1.0)
                    }
                }
                .padding()
            }
        }
}

#Preview {
    ProgressAnimationPractice()
}

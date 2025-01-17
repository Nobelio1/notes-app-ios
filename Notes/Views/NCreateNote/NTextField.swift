//
//  NTextField.swift
//  Notes
//
//  Created by Gino Alejandro on 17/01/25.
//

import SwiftUI

struct NTextField: View {
    let placeholder: String
    @Binding var text: String

    var body: some View {
        
        TextField(placeholder, text: $text)
            .font(.headline)
            .padding()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
    }
}

#Preview {
    VStack {
        NTextField(placeholder: "Escribe algo...", text: .constant("Texto inicial"))
    }
    .padding()
}

//
//  TextFieldPractice.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct TextFieldPractice: View {
    
    @State var name: String = ""
    @State var color: Color = Color.gray.opacity(0.2)
    
    var body: some View {
        TextField("Name", text: $name)
            .font(.headline)
            .padding()
            .background(color)
            .cornerRadius(8)
            .padding()
            .onChange(of: name) { newValue in
                if newValue.count > 10 {
                    color = .red.opacity(0.2)
                }else {
                    color = Color.gray.opacity(0.2)
                }
            }
    }
}

#Preview {
    TextFieldPractice()
}

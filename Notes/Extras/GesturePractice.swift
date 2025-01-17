//
//  GesturePractice.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct GesturePractice: View {
    
    @State var color: Color = .black
    @State var offset: CGSize = .zero
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .offset(offset)
            .onTapGesture(count: 2) {
                color = .red
            }
            .onLongPressGesture (minimumDuration: 3) {
                color = .blue
            }
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        offset = value.translation
                    }
            )
    }
}

#Preview {
    GesturePractice()
}

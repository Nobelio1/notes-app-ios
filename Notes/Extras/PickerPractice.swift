//
//  PickerPractice.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct PickerPractice: View {
    @State var date: Date = Date()
    @State var category: Int = 0
    @State var size: NCardType = .small
    
    var body: some View {
        
        /*
        DatePicker(
            "date",
            selection: $date,
            displayedComponents: [.hourAndMinute]
        )
        .datePickerStyle(.automatic)
        .padding()
         */
        
        /*
        Picker("Categories", selection: $category) {
            Text("0").tag(0)
            Text("1").tag(1)
            Text("2").tag(2)
        }
        .pickerStyle(.segmented)
         
         */
        
        Picker("Tamaños", selection: $size) {
            Text("Pequeño").tag(NCardType.small)
            Text("Mediano").tag(NCardType.medium)
        }
    }
}

#Preview {
    PickerPractice()
}

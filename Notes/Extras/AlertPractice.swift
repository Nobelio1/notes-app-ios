//
//  AlertPractice.swift
//  Notes
//
//  Created by Gino Alejandro on 16/01/25.
//

import SwiftUI

struct AlertPractice: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack{
            Button("Show Alert"){
                showAlert = true
            }
        }
        .alert("Este es un mensaje de alerta", isPresented: $showAlert){
            Button("Aceptar"){
                print("Aceptar")
            }
            Button("Cancelar"){
                print("Cancelar")
            }
        }
    }
}

#Preview {
    AlertPractice()
}
